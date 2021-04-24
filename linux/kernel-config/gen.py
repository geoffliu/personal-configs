import kconfiglib
import os

from configparts import x1
import deptree

script_dir = os.path.dirname(os.path.realpath(__file__))

class BadDependency(Exception):
    pass

def set_value(symbol, target):
    if symbol.type == kconfiglib.TRISTATE:
        symbol.set_value(max(target, symbol.tri_value))
    else:
        symbol.set_value(2)

def enable_config(kconf, name, target):
    symbol = kconf.syms[name]
    symbol.set_value(max(target, symbol.tri_value))

    def recurse(dep):
        if dep == kconf.y:
            return

        if isinstance(dep, kconfiglib.Symbol):
            set_value(dep, target)
            return

        if isinstance(dep, kconfiglib.Choice):
            return

        if dep[0] == kconfiglib.AND:
            op, c1, c2 = dep
            recurse(c1)
            recurse(c2)

        elif not deptree.is_satisfied(dep, target):
            print(symbol)
            print(dep)
            raise BadDependency(dep)

    recurse(symbol.direct_dep)


def clear_defaults(kconf):
    for s in kconf.unique_defined_syms:
        if s.type in (kconfiglib.BOOL, kconfiglib.TRISTATE) and not s.user_value:
            s.set_value(0)


kconf = kconfiglib.Kconfig(warn=False)
kconf.load_config(os.path.join(script_dir, 'kernel-minimal'))

for c, v in x1.CONFIGS:
    enable_config(kconf, c, v)

clear_defaults(kconf)

print(kconf.write_config())
