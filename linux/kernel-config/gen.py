import kconfiglib
import os

from configparts import x1

script_dir = os.path.dirname(os.path.realpath(__file__))

kconf = kconfiglib.Kconfig(warn=False)
kconf.load_config(os.path.join(script_dir, 'kernel-tiny'))
kconf.warn = True

x1.apply_config(kconf)
print(kconf.write_config())
