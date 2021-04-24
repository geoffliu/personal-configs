import kconfiglib
import os

from configparts import x1
import deptree

script_dir = os.path.dirname(os.path.realpath(__file__))

def clear_defaults(kconf):
    for s in kconf.unique_defined_syms:
        if s.type in (kconfiglib.BOOL, kconfiglib.TRISTATE) and not s.user_value:
            s.set_value(0)

def print_symbol(name):
    s = kconf.syms[name]
    print(s)
    print('V', s.tri_value)
    print('R', kconfiglib.expr_str(s.rev_dep), kconfiglib.expr_value(s.rev_dep))

kconf = kconfiglib.Kconfig(warn=False)
kconf.load_config(os.path.join(script_dir, 'kernel-minimal'))

explicit_sets = set()
for c, v in x1.CONFIGS:
    deptree.enable_config(kconf.syms[c], v, explicit_sets)

print('Check changes can be persisted')
while True:
    curr_count = len(explicit_sets)
    if all(deptree.try_persist(kconf.syms[s], explicit_sets) for s in set(explicit_sets)):
        break

    if curr_count == len(explicit_sets):
        for s in explicit_sets:
            if not deptree.try_persist(kconf.syms[s], explicit_sets):
                print_symbol(s)
        break

clear_defaults(kconf)

print(kconf.write_config())
