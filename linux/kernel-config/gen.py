import kconfiglib

kconf = kconfiglib.standard_kconfig()
kconf.load_config('/home/geoff/.ownconfigs/linux/kernel-config/kernel-default')
print(kconf.write_config())
