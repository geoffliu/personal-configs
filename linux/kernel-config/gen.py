import kconfiglib
import os

script_dir = os.path.dirname(os.path.realpath(__file__))

kconf = kconfiglib.standard_kconfig()
kconf.load_config(os.path.join(script_dir, 'kernel-tiny'))
print(kconf.write_config())
