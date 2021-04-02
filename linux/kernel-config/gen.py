import kconfiglib

kconf = kconfiglib.Kconfig()
print(kconf.write_config())
