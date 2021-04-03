import kconfiglib
import os

from configparts import x1
from configparts import x1failsafe

script_dir = os.path.dirname(os.path.realpath(__file__))

class BadDependency(Exception):
    pass

def enable_config(kconf, name, target):
    symbol = kconf.syms[name]
    symbol.set_value(max(target, symbol.tri_value))

    def recurse(dep):
        if dep == kconf.y:
            return

        if isinstance(dep, kconfiglib.Symbol):
            dep.set_value(max(target, dep.tri_value))
            return

        if dep[0] == kconfiglib.AND:
            op, c1, c2 = dep
            recurse(c1)
            recurse(c2)
        elif dep[0] == kconfiglib.NOT:
            cond = dep[1]
            if cond.type == kconfiglib.UNKNOWN:
                print('WARNING: unknown dep ' + cond.name)
            elif cond.str_value != kconf.n:
                raise BadDependency(dep)
        elif dep[0] == kconfiglib.EQUAL:
            op, c1, c2 = dep
            if c1.str_value != c2.str_value:
                raise BadDependency(dep)
        else:
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

x1failsafe.apply_config(kconf)
clear_defaults(kconf)

print(kconf.write_config())
