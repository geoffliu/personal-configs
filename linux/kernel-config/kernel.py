import re
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


line_re = re.compile('([A-Z0-9_]*)=([my])')
def parse_config_file(filename):
    res = {}
    with open(filename) as f:
        for line in f:
            m = line_re.fullmatch(line.strip())
            if m:
                res[m.group(1)] = m.group(2)
    return res

def_configs = parse_config_file(argv[1])
cur_configs = parse_config_file(argv[2])

higher_keys = []
for k in sorted(def_configs):
    if has_higher_setting(def_configs, cur_configs, k):
        higher_keys.append(k)

for k in higher_keys:
    v2 = cur_configs[k] if k in cur_configs else 'n'
    print(f'{k}: {def_configs[k]} -- {v2}')

print(len(higher_keys))
