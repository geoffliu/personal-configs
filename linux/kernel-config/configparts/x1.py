CONFIGS = [
    ('64BIT', 2),
    ('SMP', 2),
    ('MODULES', 2),
    ('KERNEL_ZSTD', 2),
    ('RD_ZSTD', 2),
    ('MULTIUSER', 2),
    # TODO: Use PREEMPT instead?
    ('PREEMPT_VOLUNTARY', 2),

    ('PROCESSOR_SELECT', 2),
    ('CPU_SUP_INTEL', 2),
    ('MICROCODE_INTEL', 2),

    # Security features
    ('RANDOMIZE_BASE', 2),
    ('RANDOMIZE_MEMORY', 2),

    # Use large memory pages, supposedly gives a performance boost
    ('TRANSPARENT_HUGEPAGE', 2),
    ('TRANSPARENT_HUGEPAGE_ALWAYS', 2),

    # TODO: Do we need both here?
    ('FRAMEBUFFER_CONSOLE', 2),
    ('VT_CONSOLE', 2),

    # Needed drivers to boot
    ('BLK_DEV_NVME', 2),
    ('DM_CRYPT', 2),
    ('EXT4_FS', 2),
    ('EXT4_USE_FOR_EXT2', 2),
    ('KEYBOARD_ATKBD', 2),

    # Other device drivers
    ('RTC_DRV_CMOS', 2),
    ('MOUSE_PS2', 2),
    ('ITCO_WDT', 1),
    # TODO: What does this do?
    ('ITCO_VENDOR_SUPPORT', 1),
    ('INTEL_IDMA64', 1),
    ('RFKILL', 1),
    ('IWLWIFI', 1),
    ('IWLMVM', 1),
    ('USB_XHCI_HCD', 1),
    # Compiled into the kernel, otherwise video isn't ready when X attempts to
    # start
    ('DRM_I915', 2),

    # Sound
    ('SND_HDA_INTEL', 1),
    ('SND_HDA_CODEC_REALTEK', 1),
    ('SND_SOC_SOF_COFFEELAKE', 1),
    ('SND_SOC_SOF_HDA_AUDIO_CODEC', 1),
    ('SND_SOC_INTEL_SKL_HDA_DSP_GENERIC_MACH', 1),

    # Gentoo flags
    ('GENTOO_LINUX_PORTAGE', 2),
    ('GENTOO_LINUX_UDEV', 2),
    ('GENTOO_LINUX_INIT_SYSTEMD', 2),

    # Power saving and management
    ('INTEL_IDLE', 2),
    ('X86_INTEL_PSTATE', 2),
    ('SUSPEND', 2),
    ('PM_AUTOSLEEP', 2),
    ('CPU_FREQ_GOV_PERFORMANCE', 2),
    ('ACPI_AC', 1),
    ('ACPI_BATTERY', 1),
    ('ACPI_VIDEO', 1),
    ('THINKPAD_ACPI_VIDEO', 1),

    # Needed by Chrome
    ('ADVISE_SYSCALLS', 2),
]

