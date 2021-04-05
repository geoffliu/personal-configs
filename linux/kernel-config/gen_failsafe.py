import re
import os
from sys import argv


def has_higher_setting(c1, c2, opt):
    if opt not in c1:
        return False
    if opt not in c2:
        return True

    v1 = c1[opt]
    v2 = c2[opt]
    if v1 == 'y':
        return v2 != 'y'

    return False


conf_re = re.compile('CONFIG_([A-Z0-9_x]*)="?(.*?)"?')
unset_re = re.compile('# CONFIG_([A-Z0-9_x]*) is not set')
def parse_config_file(filename):
    res = {}
    with open(filename) as f:
        for line in f:
            m = unset_re.fullmatch(line.strip())
            if m:
                res[m.group(1)] = 'n'
                continue

            m = conf_re.fullmatch(line.strip())
            if m:
                res[m.group(1)] = m.group(2)
    return res

min_configs = parse_config_file(argv[1])
cur_configs = parse_config_file(argv[2])

patch = {}
for k, v in cur_configs.items():
    if min_configs.get(k, 'n') != v:
        patch[k] = v

for k in min_configs:
    if min_configs[k] != 'n' and cur_configs.get(k, 'n') == 'n':
        patch[k] = 'n'

with open(argv[3], 'w') as f:
    print('def apply_config(kconf):', file=f)
    for k, v in patch.items():
        print(f'  kconf.syms["{k}"].set_value("{v}")', file=f)

    if not patch:
        print(f'  pass', file=f)

print(len(patch))
