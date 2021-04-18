def apply_config(kconf):
  kconf.syms["CC_VERSION_TEXT"].set_value("x86_64-pc-linux-gnu-gcc (Gentoo 10.2.0-r5 p6) 10.2.0")
  kconf.syms["LOCALVERSION"].set_value("-x86_64")
  kconf.syms["SYSVIPC_SYSCTL"].set_value("y")
  kconf.syms["POSIX_MQUEUE"].set_value("y")
  kconf.syms["POSIX_MQUEUE_SYSCTL"].set_value("y")
  kconf.syms["CROSS_MEMORY_ATTACH"].set_value("y")
  kconf.syms["GENERIC_IRQ_INJECTION"].set_value("y")
  kconf.syms["GENERIC_MSI_IRQ"].set_value("y")
  kconf.syms["GENERIC_MSI_IRQ_DOMAIN"].set_value("y")
  kconf.syms["POSIX_CPU_TIMERS_TASK_WORK"].set_value("y")
  kconf.syms["TICK_ONESHOT"].set_value("y")
  kconf.syms["NO_HZ_COMMON"].set_value("y")
  kconf.syms["HZ_PERIODIC"].set_value("n")
  kconf.syms["NO_HZ_FULL"].set_value("y")
  kconf.syms["CONTEXT_TRACKING"].set_value("y")
  kconf.syms["NO_HZ"].set_value("y")
  kconf.syms["HIGH_RES_TIMERS"].set_value("y")
  kconf.syms["VIRT_CPU_ACCOUNTING"].set_value("y")
  kconf.syms["VIRT_CPU_ACCOUNTING_GEN"].set_value("y")
  kconf.syms["IRQ_TIME_ACCOUNTING"].set_value("y")
  kconf.syms["HAVE_SCHED_AVG_IRQ"].set_value("y")
  kconf.syms["BSD_PROCESS_ACCT"].set_value("y")
  kconf.syms["BSD_PROCESS_ACCT_V3"].set_value("y")
  kconf.syms["TASKSTATS"].set_value("y")
  kconf.syms["TASK_DELAY_ACCT"].set_value("y")
  kconf.syms["TASK_XACCT"].set_value("y")
  kconf.syms["TASK_IO_ACCOUNTING"].set_value("y")
  kconf.syms["PSI"].set_value("y")
  kconf.syms["PSI_DEFAULT_DISABLED"].set_value("y")
  kconf.syms["CPU_ISOLATION"].set_value("y")
  kconf.syms["TASKS_RCU"].set_value("y")
  kconf.syms["TASKS_RUDE_RCU"].set_value("y")
  kconf.syms["RCU_NOCB_CPU"].set_value("y")
  kconf.syms["LOG_BUF_SHIFT"].set_value("18")
  kconf.syms["LOG_CPU_MAX_BUF_SHIFT"].set_value("15")
  kconf.syms["PRINTK_SAFE_LOG_BUF_SHIFT"].set_value("13")
  kconf.syms["UCLAMP_TASK"].set_value("y")
  kconf.syms["UCLAMP_BUCKETS_COUNT"].set_value("5")
  kconf.syms["NUMA_BALANCING"].set_value("y")
  kconf.syms["NUMA_BALANCING_DEFAULT_ENABLED"].set_value("y")
  kconf.syms["PAGE_COUNTER"].set_value("y")
  kconf.syms["MEMCG"].set_value("y")
  kconf.syms["MEMCG_KMEM"].set_value("y")
  kconf.syms["BLK_CGROUP"].set_value("y")
  kconf.syms["CGROUP_WRITEBACK"].set_value("y")
  kconf.syms["CGROUP_SCHED"].set_value("y")
  kconf.syms["FAIR_GROUP_SCHED"].set_value("y")
  kconf.syms["CFS_BANDWIDTH"].set_value("y")
  kconf.syms["CGROUP_PIDS"].set_value("y")
  kconf.syms["CGROUP_FREEZER"].set_value("y")
  kconf.syms["CGROUP_HUGETLB"].set_value("y")
  kconf.syms["CPUSETS"].set_value("y")
  kconf.syms["PROC_PID_CPUSET"].set_value("y")
  kconf.syms["CGROUP_DEVICE"].set_value("y")
  kconf.syms["CGROUP_CPUACCT"].set_value("y")
  kconf.syms["CGROUP_PERF"].set_value("y")
  kconf.syms["TIME_NS"].set_value("y")
  kconf.syms["SCHED_AUTOGROUP"].set_value("y")
  kconf.syms["CC_OPTIMIZE_FOR_PERFORMANCE"].set_value("y")
  kconf.syms["CC_OPTIMIZE_FOR_SIZE"].set_value("n")
  kconf.syms["SYSCTL"].set_value("y")
  kconf.syms["HAVE_UID16"].set_value("y")
  kconf.syms["UID16"].set_value("y")
  kconf.syms["SGETMASK_SYSCALL"].set_value("y")
  kconf.syms["SYSFS_SYSCALL"].set_value("y")
  kconf.syms["POSIX_TIMERS"].set_value("y")
  kconf.syms["PRINTK"].set_value("y")
  kconf.syms["PRINTK_NMI"].set_value("y")
  kconf.syms["BUG"].set_value("y")
  kconf.syms["ELF_CORE"].set_value("y")
  kconf.syms["PCSPKR_PLATFORM"].set_value("y")
  kconf.syms["BASE_FULL"].set_value("y")
  kconf.syms["FUTEX"].set_value("y")
  kconf.syms["FUTEX_PI"].set_value("y")
  kconf.syms["AIO"].set_value("y")
  kconf.syms["IO_URING"].set_value("y")
  kconf.syms["MEMBARRIER"].set_value("y")
  kconf.syms["RSEQ"].set_value("y")
  kconf.syms["EMBEDDED"].set_value("n")
  kconf.syms["VM_EVENT_COUNTERS"].set_value("y")
  kconf.syms["SLUB_DEBUG"].set_value("y")
  kconf.syms["SLUB"].set_value("y")
  kconf.syms["SLOB"].set_value("n")
  kconf.syms["SLAB_MERGE_DEFAULT"].set_value("y")
  kconf.syms["SLAB_FREELIST_RANDOM"].set_value("y")
  kconf.syms["SLAB_FREELIST_HARDENED"].set_value("y")
  kconf.syms["SHUFFLE_PAGE_ALLOCATOR"].set_value("y")
  kconf.syms["SLUB_CPU_PARTIAL"].set_value("y")
  kconf.syms["PROFILING"].set_value("y")
  kconf.syms["GENERIC_BUG"].set_value("y")
  kconf.syms["GENERIC_BUG_RELATIVE_POINTERS"].set_value("y")
  kconf.syms["ZONE_DMA"].set_value("y")
  kconf.syms["X86_MPPARSE"].set_value("y")
  kconf.syms["RETPOLINE"].set_value("y")
  kconf.syms["X86_SUPPORTS_MEMORY_FAILURE"].set_value("y")
  kconf.syms["SCHED_OMIT_FRAME_POINTER"].set_value("y")
  kconf.syms["PROCESSOR_SELECT"].set_value("n")
  kconf.syms["CPU_SUP_AMD"].set_value("y")
  kconf.syms["CPU_SUP_HYGON"].set_value("y")
  kconf.syms["CPU_SUP_CENTAUR"].set_value("y")
  kconf.syms["CPU_SUP_ZHAOXIN"].set_value("y")
  kconf.syms["DMI"].set_value("y")
  kconf.syms["MAXSMP"].set_value("y")
  kconf.syms["NR_CPUS_RANGE_BEGIN"].set_value("8192")
  kconf.syms["NR_CPUS_RANGE_END"].set_value("8192")
  kconf.syms["NR_CPUS_DEFAULT"].set_value("8192")
  kconf.syms["NR_CPUS"].set_value("8192")
  kconf.syms["SCHED_MC"].set_value("y")
  kconf.syms["SCHED_MC_PRIO"].set_value("y")
  kconf.syms["X86_REROUTE_FOR_BROKEN_BOOT_IRQS"].set_value("y")
  kconf.syms["X86_MCE"].set_value("y")
  kconf.syms["X86_MCELOG_LEGACY"].set_value("y")
  kconf.syms["X86_MCE_INTEL"].set_value("y")
  kconf.syms["X86_MCE_THRESHOLD"].set_value("y")
  kconf.syms["X86_THERMAL_VECTOR"].set_value("y")
  kconf.syms["PERF_EVENTS_INTEL_UNCORE"].set_value("y")
  kconf.syms["PERF_EVENTS_INTEL_RAPL"].set_value("y")
  kconf.syms["PERF_EVENTS_INTEL_CSTATE"].set_value("y")
  kconf.syms["PERF_EVENTS_AMD_POWER"].set_value("m")
  kconf.syms["X86_VSYSCALL_EMULATION"].set_value("y")
  kconf.syms["MICROCODE_AMD"].set_value("y")
  kconf.syms["X86_MSR"].set_value("m")
  kconf.syms["X86_CPUID"].set_value("m")
  kconf.syms["NUMA"].set_value("y")
  kconf.syms["AMD_NUMA"].set_value("y")
  kconf.syms["X86_64_ACPI_NUMA"].set_value("y")
  kconf.syms["NODES_SHIFT"].set_value("10")
  kconf.syms["ARCH_PROC_KCORE_TEXT"].set_value("y")
  kconf.syms["X86_CHECK_BIOS_CORRUPTION"].set_value("y")
  kconf.syms["MTRR"].set_value("y")
  kconf.syms["MTRR_SANITIZER"].set_value("y")
  kconf.syms["MTRR_SANITIZER_ENABLE_DEFAULT"].set_value("0")
  kconf.syms["MTRR_SANITIZER_SPARE_REG_NR_DEFAULT"].set_value("1")
  kconf.syms["X86_PAT"].set_value("y")
  kconf.syms["ARCH_USES_PG_UNCACHED"].set_value("y")
  kconf.syms["ARCH_RANDOM"].set_value("y")
  kconf.syms["X86_SMAP"].set_value("y")
  kconf.syms["X86_UMIP"].set_value("y")
  kconf.syms["X86_INTEL_MEMORY_PROTECTION_KEYS"].set_value("y")
  kconf.syms["EFI"].set_value("y")
  kconf.syms["EFI_STUB"].set_value("y")
  kconf.syms["EFI_MIXED"].set_value("y")
  kconf.syms["HZ_250"].set_value("n")
  kconf.syms["HZ_300"].set_value("y")
  kconf.syms["HZ"].set_value("300")
  kconf.syms["SCHED_HRTICK"].set_value("y")
  kconf.syms["CRASH_DUMP"].set_value("y")
  kconf.syms["PHYSICAL_ALIGN"].set_value("0x1000000")
  kconf.syms["RANDOMIZE_MEMORY_PHYSICAL_PADDING"].set_value("0xa")
  kconf.syms["USE_PERCPU_NUMA_NODE_ID"].set_value("y")
  kconf.syms["ARCH_ENABLE_HUGEPAGE_MIGRATION"].set_value("y")
  kconf.syms["SUSPEND"].set_value("y")
  kconf.syms["SUSPEND_FREEZER"].set_value("y")
  kconf.syms["PM_SLEEP"].set_value("y")
  kconf.syms["PM_SLEEP_SMP"].set_value("y")
  kconf.syms["PM_AUTOSLEEP"].set_value("y")
  kconf.syms["PM"].set_value("y")
  kconf.syms["PM_CLK"].set_value("y")
  kconf.syms["ACPI_SPCR_TABLE"].set_value("y")
  kconf.syms["ACPI_SLEEP"].set_value("y")
  kconf.syms["ACPI_REV_OVERRIDE_POSSIBLE"].set_value("y")
  kconf.syms["ACPI_EC_DEBUGFS"].set_value("m")
  kconf.syms["ACPI_AC"].set_value("y")
  kconf.syms["ACPI_FAN"].set_value("y")
  kconf.syms["ACPI_TAD"].set_value("m")
  kconf.syms["ACPI_DOCK"].set_value("y")
  kconf.syms["ACPI_CPPC_LIB"].set_value("y")
  kconf.syms["ACPI_IPMI"].set_value("m")
  kconf.syms["ACPI_PROCESSOR_AGGREGATOR"].set_value("m")
  kconf.syms["ACPI_THERMAL"].set_value("y")
  kconf.syms["ACPI_TABLE_UPGRADE"].set_value("y")
  kconf.syms["ACPI_DEBUG"].set_value("y")
  kconf.syms["ACPI_PCI_SLOT"].set_value("y")
  kconf.syms["ACPI_SBS"].set_value("m")
  kconf.syms["ACPI_HED"].set_value("y")
  kconf.syms["ACPI_CUSTOM_METHOD"].set_value("m")
  kconf.syms["ACPI_BGRT"].set_value("y")
  kconf.syms["ACPI_NUMA"].set_value("y")
  kconf.syms["ACPI_HMAT"].set_value("y")
  kconf.syms["ACPI_WATCHDOG"].set_value("y")
  kconf.syms["ACPI_CONFIGFS"].set_value("m")
  kconf.syms["PMIC_OPREGION"].set_value("y")
  kconf.syms["X86_PM_TIMER"].set_value("y")
  kconf.syms["CPU_FREQ_STAT"].set_value("y")
  kconf.syms["CPU_FREQ_DEFAULT_GOV_PERFORMANCE"].set_value("y")
  kconf.syms["CPU_FREQ_DEFAULT_GOV_SCHEDUTIL"].set_value("n")
  kconf.syms["CPU_FREQ_GOV_USERSPACE"].set_value("m")
  kconf.syms["X86_PCC_CPUFREQ"].set_value("m")
  kconf.syms["X86_ACPI_CPUFREQ"].set_value("m")
  kconf.syms["CPU_IDLE_GOV_MENU"].set_value("y")
  kconf.syms["CPU_IDLE_GOV_TEO"].set_value("y")
  kconf.syms["PCI_MMCONFIG"].set_value("y")
  kconf.syms["MMCONF_FAM10H"].set_value("y")
  kconf.syms["AMD_NB"].set_value("y")
  kconf.syms["IA32_EMULATION"].set_value("y")
  kconf.syms["X86_X32"].set_value("y")
  kconf.syms["COMPAT_32"].set_value("y")
  kconf.syms["COMPAT"].set_value("y")
  kconf.syms["COMPAT_FOR_U64_ALIGNMENT"].set_value("y")
  kconf.syms["SYSVIPC_COMPAT"].set_value("y")
  kconf.syms["EDD"].set_value("m")
  kconf.syms["FIRMWARE_MEMMAP"].set_value("y")
  kconf.syms["DMI_SYSFS"].set_value("y")
  kconf.syms["DMI_SCAN_MACHINE_NON_EFI_FALLBACK"].set_value("y")
  kconf.syms["EFI_VARS"].set_value("m")
  kconf.syms["EFI_ESRT"].set_value("y")
  kconf.syms["EFI_SOFT_RESERVE"].set_value("y")
  kconf.syms["EFI_RUNTIME_WRAPPERS"].set_value("y")
  kconf.syms["EFI_GENERIC_STUB_INITRD_CMDLINE_LOADER"].set_value("y")
  kconf.syms["EFI_BOOTLOADER_CONTROL"].set_value("m")
  kconf.syms["EFI_CAPSULE_LOADER"].set_value("m")
  kconf.syms["APPLE_PROPERTIES"].set_value("y")
  kconf.syms["RESET_ATTACK_MITIGATION"].set_value("y")
  kconf.syms["EFI_RCI2_TABLE"].set_value("y")
  kconf.syms["EFI_DEV_PATH_PARSER"].set_value("y")
  kconf.syms["EFI_CUSTOM_SSDT_OVERLAYS"].set_value("y")
  kconf.syms["CRASH_CORE"].set_value("y")
  kconf.syms["JUMP_LABEL"].set_value("y")
  kconf.syms["HAVE_ALIGNED_STRUCT_PAGE"].set_value("y")
  kconf.syms["ARCH_WANT_COMPAT_IPC_PARSE_VERSION"].set_value("y")
  kconf.syms["ARCH_WANT_OLD_COMPAT_IPC"].set_value("y")
  kconf.syms["STACKPROTECTOR"].set_value("y")
  kconf.syms["STACKPROTECTOR_STRONG"].set_value("y")
  kconf.syms["HAVE_ARCH_MMAP_RND_COMPAT_BITS"].set_value("y")
  kconf.syms["ARCH_MMAP_RND_COMPAT_BITS"].set_value("8")
  kconf.syms["HAVE_ARCH_COMPAT_MMAP_BASES"].set_value("y")
  kconf.syms["HAVE_RELIABLE_STACKTRACE"].set_value("y")
  kconf.syms["OLD_SIGSUSPEND3"].set_value("y")
  kconf.syms["COMPAT_OLD_SIGACTION"].set_value("y")
  kconf.syms["COMPAT_32BIT_TIME"].set_value("y")
  kconf.syms["VMAP_STACK"].set_value("y")
  kconf.syms["GCC_PLUGINS"].set_value("y")
  kconf.syms["BASE_SMALL"].set_value("0")
  kconf.syms["MODULE_UNLOAD"].set_value("y")
  kconf.syms["TRIM_UNUSED_KSYMS"].set_value("y")
  kconf.syms["UNUSED_KSYMS_WHITELIST"].set_value("")
  kconf.syms["BLK_CGROUP_RWSTAT"].set_value("y")
  kconf.syms["BLK_DEV_BSGLIB"].set_value("y")
  kconf.syms["BLK_DEV_INTEGRITY"].set_value("y")
  kconf.syms["BLK_DEV_INTEGRITY_T10"].set_value("y")
  kconf.syms["BLK_DEV_THROTTLING"].set_value("y")
  kconf.syms["BLK_WBT"].set_value("y")
  kconf.syms["BLK_WBT_MQ"].set_value("y")
  kconf.syms["BLK_DEBUG_FS"].set_value("y")
  kconf.syms["BLOCK_COMPAT"].set_value("y")
  kconf.syms["BLK_PM"].set_value("y")
  kconf.syms["MQ_IOSCHED_DEADLINE"].set_value("y")
  kconf.syms["MQ_IOSCHED_KYBER"].set_value("y")
  kconf.syms["IOSCHED_BFQ"].set_value("y")
  kconf.syms["BFQ_GROUP_IOSCHED"].set_value("y")
  kconf.syms["PADATA"].set_value("y")
  kconf.syms["FREEZER"].set_value("y")
  kconf.syms["BINFMT_ELF"].set_value("y")
  kconf.syms["COMPAT_BINFMT_ELF"].set_value("y")
  kconf.syms["ELFCORE"].set_value("y")
  kconf.syms["CORE_DUMP_DEFAULT_ELF_HEADERS"].set_value("y")
  kconf.syms["BINFMT_SCRIPT"].set_value("y")
  kconf.syms["BINFMT_MISC"].set_value("y")
  kconf.syms["COREDUMP"].set_value("y")
  kconf.syms["NEED_MULTIPLE_NODES"].set_value("y")
  kconf.syms["SPARSEMEM_VMEMMAP"].set_value("y")
  kconf.syms["NUMA_KEEP_MEMINFO"].set_value("y")
  kconf.syms["MEMORY_ISOLATION"].set_value("y")
  kconf.syms["CONTIG_ALLOC"].set_value("y")
  kconf.syms["BOUNCE"].set_value("y")
  kconf.syms["MMU_NOTIFIER"].set_value("y")
  kconf.syms["KSM"].set_value("y")
  kconf.syms["DEFAULT_MMAP_MIN_ADDR"].set_value("65536")
  kconf.syms["ARCH_SUPPORTS_MEMORY_FAILURE"].set_value("y")
  kconf.syms["MEMORY_FAILURE"].set_value("y")
  kconf.syms["HWPOISON_INJECT"].set_value("m")
  kconf.syms["TRANSPARENT_HUGEPAGE_ALWAYS"].set_value("n")
  kconf.syms["TRANSPARENT_HUGEPAGE_MADVISE"].set_value("y")
  kconf.syms["CLEANCACHE"].set_value("y")
  kconf.syms["CMA"].set_value("y")
  kconf.syms["CMA_AREAS"].set_value("7")
  kconf.syms["MEM_SOFT_DIRTY"].set_value("y")
  kconf.syms["ZPOOL"].set_value("y")
  kconf.syms["ZBUD"].set_value("y")
  kconf.syms["Z3FOLD"].set_value("y")
  kconf.syms["ZSMALLOC"].set_value("y")
  kconf.syms["DEFERRED_STRUCT_PAGE_INIT"].set_value("y")
  kconf.syms["ARCH_USES_HIGH_VMA_FLAGS"].set_value("y")
  kconf.syms["ARCH_HAS_PKEYS"].set_value("y")
  kconf.syms["SKB_EXTENSIONS"].set_value("y")
  kconf.syms["PACKET"].set_value("y")
  kconf.syms["PACKET_DIAG"].set_value("m")
  kconf.syms["UNIX_DIAG"].set_value("m")
  kconf.syms["TLS"].set_value("m")
  kconf.syms["TLS_DEVICE"].set_value("y")
  kconf.syms["XFRM"].set_value("y")
  kconf.syms["XFRM_ALGO"].set_value("y")
  kconf.syms["XFRM_USER"].set_value("y")
  kconf.syms["XFRM_INTERFACE"].set_value("m")
  kconf.syms["XFRM_SUB_POLICY"].set_value("y")
  kconf.syms["XFRM_MIGRATE"].set_value("y")
  kconf.syms["XFRM_STATISTICS"].set_value("y")
  kconf.syms["NET_KEY"].set_value("m")
  kconf.syms["NET_KEY_MIGRATE"].set_value("y")
  kconf.syms["XDP_SOCKETS"].set_value("y")
  kconf.syms["XDP_SOCKETS_DIAG"].set_value("m")
  kconf.syms["NET_IP_TUNNEL"].set_value("m")
  kconf.syms["SYN_COOKIES"].set_value("y")
  kconf.syms["NET_UDP_TUNNEL"].set_value("m")
  kconf.syms["INET_DIAG"].set_value("m")
  kconf.syms["INET_TCP_DIAG"].set_value("m")
  kconf.syms["INET_UDP_DIAG"].set_value("m")
  kconf.syms["INET_RAW_DIAG"].set_value("m")
  kconf.syms["INET_DIAG_DESTROY"].set_value("y")
  kconf.syms["TCP_MD5SIG"].set_value("y")
  kconf.syms["IPV6_ROUTER_PREF"].set_value("y")
  kconf.syms["IPV6_ROUTE_INFO"].set_value("y")
  kconf.syms["IPV6_OPTIMISTIC_DAD"].set_value("y")
  kconf.syms["IPV6_MULTIPLE_TABLES"].set_value("y")
  kconf.syms["IPV6_SUBTREES"].set_value("y")
  kconf.syms["NET_PTP_CLASSIFY"].set_value("y")
  kconf.syms["IP_SCTP"].set_value("m")
  kconf.syms["SCTP_DEFAULT_COOKIE_HMAC_SHA1"].set_value("y")
  kconf.syms["SCTP_COOKIE_HMAC_MD5"].set_value("y")
  kconf.syms["SCTP_COOKIE_HMAC_SHA1"].set_value("y")
  kconf.syms["INET_SCTP_DIAG"].set_value("m")
  kconf.syms["DNS_RESOLVER"].set_value("m")
  kconf.syms["NETLINK_DIAG"].set_value("m")
  kconf.syms["MPLS"].set_value("y")
  kconf.syms["NET_MPLS_GSO"].set_value("m")
  kconf.syms["MPLS_ROUTING"].set_value("m")
  kconf.syms["NET_NSH"].set_value("m")
  kconf.syms["NET_NCSI"].set_value("y")
  kconf.syms["NCSI_OEM_CMD_GET_MAC"].set_value("y")
  kconf.syms["CGROUP_NET_PRIO"].set_value("y")
  kconf.syms["CGROUP_NET_CLASSID"].set_value("y")
  kconf.syms["AF_KCM"].set_value("m")
  kconf.syms["STREAM_PARSER"].set_value("y")
  kconf.syms["FIB_RULES"].set_value("y")
  kconf.syms["CFG80211_DEFAULT_PS"].set_value("y")
  kconf.syms["CFG80211_CRDA_SUPPORT"].set_value("y")
  kconf.syms["MAC80211_HAS_RC"].set_value("y")
  kconf.syms["MAC80211_RC_MINSTREL"].set_value("y")
  kconf.syms["MAC80211_RC_DEFAULT_MINSTREL"].set_value("y")
  kconf.syms["MAC80211_RC_DEFAULT"].set_value("minstrel_ht")
  kconf.syms["PSAMPLE"].set_value("m")
  kconf.syms["DST_CACHE"].set_value("y")
  kconf.syms["GRO_CELLS"].set_value("y")
  kconf.syms["SOCK_VALIDATE_XMIT"].set_value("y")
  kconf.syms["NET_SOCK_MSG"].set_value("y")
  kconf.syms["FAILOVER"].set_value("m")
  kconf.syms["ETHTOOL_NETLINK"].set_value("y")
  kconf.syms["PCIEPORTBUS"].set_value("y")
  kconf.syms["HOTPLUG_PCI_PCIE"].set_value("y")
  kconf.syms["PCIEAER"].set_value("y")
  kconf.syms["PCIEAER_INJECT"].set_value("m")
  kconf.syms["PCIE_ECRC"].set_value("y")
  kconf.syms["PCIEASPM"].set_value("y")
  kconf.syms["PCIEASPM_DEFAULT"].set_value("y")
  kconf.syms["PCIE_PME"].set_value("y")
  kconf.syms["PCIE_DPC"].set_value("y")
  kconf.syms["PCIE_PTM"].set_value("y")
  kconf.syms["PCI_MSI"].set_value("y")
  kconf.syms["PCI_MSI_IRQ_DOMAIN"].set_value("y")
  kconf.syms["PCI_QUIRKS"].set_value("y")
  kconf.syms["PCI_STUB"].set_value("y")
  kconf.syms["PCI_PF_STUB"].set_value("m")
  kconf.syms["PCI_ATS"].set_value("y")
  kconf.syms["PCI_IOV"].set_value("y")
  kconf.syms["PCI_PRI"].set_value("y")
  kconf.syms["PCI_PASID"].set_value("y")
  kconf.syms["HOTPLUG_PCI"].set_value("y")
  kconf.syms["HOTPLUG_PCI_ACPI"].set_value("y")
  kconf.syms["HOTPLUG_PCI_ACPI_IBM"].set_value("m")
  kconf.syms["HOTPLUG_PCI_SHPC"].set_value("y")
  kconf.syms["VMD"].set_value("m")
  kconf.syms["PCI_SW_SWITCHTEC"].set_value("m")
  kconf.syms["DEVTMPFS_MOUNT"].set_value("y")
  kconf.syms["STANDALONE"].set_value("y")
  kconf.syms["PREVENT_FIRMWARE_BUILD"].set_value("y")
  kconf.syms["FW_LOADER"].set_value("y")
  kconf.syms["FW_LOADER_PAGED_BUF"].set_value("y")
  kconf.syms["FW_LOADER_COMPRESS"].set_value("y")
  kconf.syms["FW_CACHE"].set_value("y")
  kconf.syms["ALLOW_DEV_COREDUMP"].set_value("y")
  kconf.syms["DEV_COREDUMP"].set_value("y")
  kconf.syms["DEBUG_DEVRES"].set_value("y")
  kconf.syms["HMEM_REPORTING"].set_value("y")
  kconf.syms["REGMAP"].set_value("y")
  kconf.syms["REGMAP_I2C"].set_value("m")
  kconf.syms["REGMAP_MMIO"].set_value("m")
  kconf.syms["CONNECTOR"].set_value("y")
  kconf.syms["PROC_EVENTS"].set_value("y")
  kconf.syms["EEPROM_AT24"].set_value("m")
  kconf.syms["EEPROM_LEGACY"].set_value("m")
  kconf.syms["EEPROM_MAX6875"].set_value("m")
  kconf.syms["EEPROM_93CX6"].set_value("m")
  kconf.syms["EEPROM_IDT_89HPESX"].set_value("m")
  kconf.syms["EEPROM_EE1004"].set_value("m")
  kconf.syms["INTEL_MEI"].set_value("m")
  kconf.syms["INTEL_MEI_ME"].set_value("m")
  kconf.syms["INTEL_MEI_TXE"].set_value("m")
  kconf.syms["INTEL_MEI_HDCP"].set_value("m")
  kconf.syms["DM_DEBUG"].set_value("y")
  kconf.syms["DM_BUFIO"].set_value("m")
  kconf.syms["DM_DEBUG_BLOCK_MANAGER_LOCKING"].set_value("y")
  kconf.syms["DM_BIO_PRISON"].set_value("m")
  kconf.syms["DM_PERSISTENT_DATA"].set_value("m")
  kconf.syms["DM_UNSTRIPED"].set_value("m")
  kconf.syms["DM_SNAPSHOT"].set_value("m")
  kconf.syms["DM_THIN_PROVISIONING"].set_value("m")
  kconf.syms["DM_CACHE"].set_value("m")
  kconf.syms["DM_CACHE_SMQ"].set_value("m")
  kconf.syms["DM_WRITECACHE"].set_value("m")
  kconf.syms["DM_MIRROR"].set_value("m")
  kconf.syms["DM_DELAY"].set_value("m")
  kconf.syms["DM_UEVENT"].set_value("y")
  kconf.syms["FIREWIRE"].set_value("m")
  kconf.syms["FIREWIRE_OHCI"].set_value("m")
  kconf.syms["FIREWIRE_NET"].set_value("m")
  kconf.syms["FIREWIRE_NOSY"].set_value("m")
  kconf.syms["INPUT_LEDS"].set_value("y")
  kconf.syms["INPUT_SPARSEKMAP"].set_value("m")
  kconf.syms["INPUT_MATRIXKMAP"].set_value("m")
  kconf.syms["INPUT_MOUSEDEV"].set_value("y")
  kconf.syms["INPUT_MOUSEDEV_SCREEN_X"].set_value("1024")
  kconf.syms["INPUT_MOUSEDEV_SCREEN_Y"].set_value("768")
  kconf.syms["INPUT_EVDEV"].set_value("y")
  kconf.syms["MOUSE_PS2_ALPS"].set_value("y")
  kconf.syms["MOUSE_PS2_BYD"].set_value("y")
  kconf.syms["MOUSE_PS2_LOGIPS2PP"].set_value("y")
  kconf.syms["MOUSE_PS2_SYNAPTICS"].set_value("y")
  kconf.syms["MOUSE_PS2_SYNAPTICS_SMBUS"].set_value("y")
  kconf.syms["MOUSE_PS2_CYPRESS"].set_value("y")
  kconf.syms["MOUSE_PS2_LIFEBOOK"].set_value("y")
  kconf.syms["MOUSE_PS2_TRACKPOINT"].set_value("y")
  kconf.syms["MOUSE_PS2_FOCALTECH"].set_value("y")
  kconf.syms["MOUSE_PS2_SMBUS"].set_value("y")
  kconf.syms["CONSOLE_TRANSLATIONS"].set_value("y")
  kconf.syms["VT_CONSOLE_SLEEP"].set_value("y")
  kconf.syms["UNIX98_PTYS"].set_value("y")
  kconf.syms["LDISC_AUTOLOAD"].set_value("y")
  kconf.syms["NULL_TTY"].set_value("m")
  kconf.syms["IPMI_HANDLER"].set_value("m")
  kconf.syms["IPMI_DMI_DECODE"].set_value("y")
  kconf.syms["IPMI_PLAT_DATA"].set_value("y")
  kconf.syms["IPMI_DEVICE_INTERFACE"].set_value("m")
  kconf.syms["IPMI_SI"].set_value("m")
  kconf.syms["IPMI_SSIF"].set_value("m")
  kconf.syms["IPMI_WATCHDOG"].set_value("m")
  kconf.syms["IPMI_POWEROFF"].set_value("m")
  kconf.syms["HW_RANDOM"].set_value("y")
  kconf.syms["HW_RANDOM_TIMERIOMEM"].set_value("m")
  kconf.syms["HW_RANDOM_INTEL"].set_value("m")
  kconf.syms["HW_RANDOM_AMD"].set_value("m")
  kconf.syms["HW_RANDOM_VIA"].set_value("m")
  kconf.syms["DEVMEM"].set_value("y")
  kconf.syms["RAW_DRIVER"].set_value("y")
  kconf.syms["MAX_RAW_DEVS"].set_value("8192")
  kconf.syms["DEVPORT"].set_value("y")
  kconf.syms["HPET"].set_value("y")
  kconf.syms["HANGCHECK_TIMER"].set_value("m")
  kconf.syms["TCG_TPM"].set_value("y")
  kconf.syms["HW_RANDOM_TPM"].set_value("y")
  kconf.syms["TCG_TIS_CORE"].set_value("y")
  kconf.syms["TCG_TIS"].set_value("y")
  kconf.syms["TCG_CRB"].set_value("y")
  kconf.syms["RANDOM_TRUST_CPU"].set_value("y")
  kconf.syms["ACPI_I2C_OPREGION"].set_value("y")
  kconf.syms["I2C_COMPAT"].set_value("y")
  kconf.syms["I2C_CHARDEV"].set_value("m")
  kconf.syms["I2C_HELPER_AUTO"].set_value("y")
  kconf.syms["I2C_SMBUS"].set_value("m")
  kconf.syms["I2C_I801"].set_value("m")
  kconf.syms["I2C_ISCH"].set_value("m")
  kconf.syms["I2C_ISMT"].set_value("m")
  kconf.syms["I2C_SCMI"].set_value("m")
  kconf.syms["PPS"].set_value("y")
  kconf.syms["PPS_CLIENT_LDISC"].set_value("m")
  kconf.syms["PPS_CLIENT_GPIO"].set_value("m")
  kconf.syms["PTP_1588_CLOCK"].set_value("y")
  kconf.syms["POWER_SUPPLY_HWMON"].set_value("y")
  kconf.syms["BATTERY_MAX17042"].set_value("m")
  kconf.syms["CHARGER_SMB347"].set_value("m")
  kconf.syms["HWMON"].set_value("y")
  kconf.syms["SENSORS_I5500"].set_value("m")
  kconf.syms["SENSORS_ACPI_POWER"].set_value("m")
  kconf.syms["THERMAL_STATISTICS"].set_value("y")
  kconf.syms["THERMAL_HWMON"].set_value("y")
  kconf.syms["THERMAL_WRITABLE_TRIPS"].set_value("y")
  kconf.syms["THERMAL_GOV_FAIR_SHARE"].set_value("y")
  kconf.syms["THERMAL_GOV_BANG_BANG"].set_value("y")
  kconf.syms["THERMAL_GOV_USER_SPACE"].set_value("y")
  kconf.syms["INTEL_POWERCLAMP"].set_value("m")
  kconf.syms["X86_PKG_TEMP_THERMAL"].set_value("m")
  kconf.syms["INTEL_SOC_DTS_IOSF_CORE"].set_value("m")
  kconf.syms["INTEL_SOC_DTS_THERMAL"].set_value("m")
  kconf.syms["INT340X_THERMAL"].set_value("m")
  kconf.syms["ACPI_THERMAL_REL"].set_value("m")
  kconf.syms["INT3406_THERMAL"].set_value("m")
  kconf.syms["INTEL_PCH_THERMAL"].set_value("m")
  kconf.syms["WATCHDOG_HANDLE_BOOT_ENABLED"].set_value("y")
  kconf.syms["WATCHDOG_SYSFS"].set_value("y")
  kconf.syms["SOFT_WATCHDOG"].set_value("m")
  kconf.syms["WDAT_WDT"].set_value("m")
  kconf.syms["ITCO_WDT"].set_value("m")
  kconf.syms["MFD_CORE"].set_value("m")
  kconf.syms["LPC_ICH"].set_value("m")
  kconf.syms["LPC_SCH"].set_value("m")
  kconf.syms["MFD_INTEL_LPSS"].set_value("m")
  kconf.syms["MFD_INTEL_LPSS_ACPI"].set_value("m")
  kconf.syms["MFD_INTEL_LPSS_PCI"].set_value("m")
  kconf.syms["MFD_SM501"].set_value("m")
  kconf.syms["MFD_WL1273_CORE"].set_value("m")
  kconf.syms["MFD_VX855"].set_value("m")
  kconf.syms["CEC_CORE"].set_value("y")
  kconf.syms["VGA_ARB"].set_value("y")
  kconf.syms["VGA_ARB_MAX_GPUS"].set_value("16")
  kconf.syms["VGA_SWITCHEROO"].set_value("y")
  kconf.syms["DRM_DP_AUX_CHARDEV"].set_value("y")
  kconf.syms["DRM_KMS_FB_HELPER"].set_value("y")
  kconf.syms["DRM_FBDEV_EMULATION"].set_value("y")
  kconf.syms["DRM_FBDEV_OVERALLOC"].set_value("100")
  kconf.syms["DRM_LOAD_EDID_FIRMWARE"].set_value("y")
  kconf.syms["DRM_DP_CEC"].set_value("y")
  kconf.syms["DRM_I2C_CH7006"].set_value("m")
  kconf.syms["DRM_I2C_SIL164"].set_value("m")
  kconf.syms["DRM_I915_CAPTURE_ERROR"].set_value("y")
  kconf.syms["DRM_I915_COMPRESS_ERROR"].set_value("y")
  kconf.syms["DRM_I915_USERPTR"].set_value("y")
  kconf.syms["DRM_I915_GVT"].set_value("y")
  kconf.syms["DRM_VGEM"].set_value("m")
  kconf.syms["DRM_ANALOGIX_ANX78XX"].set_value("m")
  kconf.syms["DRM_ANALOGIX_DP"].set_value("m")
  kconf.syms["FB_BOOT_VESA_SUPPORT"].set_value("y")
  kconf.syms["FB_CFB_FILLRECT"].set_value("y")
  kconf.syms["FB_CFB_COPYAREA"].set_value("y")
  kconf.syms["FB_CFB_IMAGEBLIT"].set_value("y")
  kconf.syms["FB_SYS_FILLRECT"].set_value("y")
  kconf.syms["FB_SYS_COPYAREA"].set_value("y")
  kconf.syms["FB_SYS_IMAGEBLIT"].set_value("y")
  kconf.syms["FB_SYS_FOPS"].set_value("y")
  kconf.syms["FB_DEFERRED_IO"].set_value("y")
  kconf.syms["FB_TILEBLITTING"].set_value("y")
  kconf.syms["FB_VGA16"].set_value("m")
  kconf.syms["FB_VESA"].set_value("y")
  kconf.syms["FB_EFI"].set_value("y")
  kconf.syms["FB_VIRTUAL"].set_value("m")
  kconf.syms["LCD_CLASS_DEVICE"].set_value("m")
  kconf.syms["LCD_PLATFORM"].set_value("m")
  kconf.syms["BACKLIGHT_APPLE"].set_value("m")
  kconf.syms["BACKLIGHT_ARCXCNN"].set_value("m")
  kconf.syms["VGASTATE"].set_value("m")
  kconf.syms["VGA_CONSOLE"].set_value("y")
  kconf.syms["FRAMEBUFFER_CONSOLE_DETECT_PRIMARY"].set_value("y")
  kconf.syms["FRAMEBUFFER_CONSOLE_ROTATION"].set_value("y")
  kconf.syms["FRAMEBUFFER_CONSOLE_DEFERRED_TAKEOVER"].set_value("y")
  kconf.syms["HID"].set_value("y")
  kconf.syms["HID_BATTERY_STRENGTH"].set_value("y")
  kconf.syms["HIDRAW"].set_value("y")
  kconf.syms["UHID"].set_value("m")
  kconf.syms["HID_GENERIC"].set_value("y")
  kconf.syms["HID_LED"].set_value("m")
  kconf.syms["HID_LENOVO"].set_value("m")
  kconf.syms["HID_SENSOR_HUB"].set_value("m")
  kconf.syms["USB_HID"].set_value("y")
  kconf.syms["HID_PID"].set_value("y")
  kconf.syms["USB_HIDDEV"].set_value("y")
  kconf.syms["I2C_HID"].set_value("m")
  kconf.syms["INTEL_ISH_HID"].set_value("m")
  kconf.syms["INTEL_ISH_FIRMWARE_DOWNLOADER"].set_value("m")
  kconf.syms["USB_COMMON"].set_value("y")
  kconf.syms["USB_ULPI_BUS"].set_value("m")
  kconf.syms["USB"].set_value("y")
  kconf.syms["USB_PCI"].set_value("y")
  kconf.syms["USB_ANNOUNCE_NEW_DEVICES"].set_value("y")
  kconf.syms["USB_DEFAULT_PERSIST"].set_value("y")
  kconf.syms["USB_LEDS_TRIGGER_USBPORT"].set_value("m")
  kconf.syms["USB_XHCI_DBGCAP"].set_value("y")
  kconf.syms["USB_XHCI_PCI"].set_value("m")
  kconf.syms["USB_XHCI_PLATFORM"].set_value("m")
  kconf.syms["USB_EHCI_HCD"].set_value("y")
  kconf.syms["USB_EHCI_ROOT_HUB_TT"].set_value("y")
  kconf.syms["USB_EHCI_TT_NEWSCHED"].set_value("y")
  kconf.syms["USB_EHCI_PCI"].set_value("y")
  kconf.syms["USB_OHCI_HCD"].set_value("m")
  kconf.syms["USB_OHCI_HCD_PCI"].set_value("m")
  kconf.syms["USB_UHCI_HCD"].set_value("m")
  kconf.syms["LEDS_CLASS"].set_value("y")
  kconf.syms["LEDS_CLASS_FLASH"].set_value("m")
  kconf.syms["LEDS_BRIGHTNESS_HW_CHANGED"].set_value("y")
  kconf.syms["LEDS_LM3530"].set_value("m")
  kconf.syms["LEDS_LM3532"].set_value("m")
  kconf.syms["LEDS_LM3601X"].set_value("m")
  kconf.syms["LEDS_PCA9532"].set_value("m")
  kconf.syms["LEDS_LP3944"].set_value("m")
  kconf.syms["LEDS_CLEVO_MAIL"].set_value("m")
  kconf.syms["LEDS_INTEL_SS4200"].set_value("m")
  kconf.syms["LEDS_BLINKM"].set_value("m")
  kconf.syms["LEDS_MLXCPLD"].set_value("m")
  kconf.syms["LEDS_MLXREG"].set_value("m")
  kconf.syms["LEDS_USER"].set_value("m")
  kconf.syms["LEDS_NIC78BX"].set_value("m")
  kconf.syms["LEDS_TRIGGER_TIMER"].set_value("m")
  kconf.syms["LEDS_TRIGGER_ONESHOT"].set_value("m")
  kconf.syms["LEDS_TRIGGER_HEARTBEAT"].set_value("m")
  kconf.syms["LEDS_TRIGGER_BACKLIGHT"].set_value("m")
  kconf.syms["LEDS_TRIGGER_ACTIVITY"].set_value("m")
  kconf.syms["LEDS_TRIGGER_DEFAULT_ON"].set_value("m")
  kconf.syms["LEDS_TRIGGER_TRANSIENT"].set_value("m")
  kconf.syms["LEDS_TRIGGER_CAMERA"].set_value("m")
  kconf.syms["LEDS_TRIGGER_PANIC"].set_value("y")
  kconf.syms["LEDS_TRIGGER_NETDEV"].set_value("m")
  kconf.syms["LEDS_TRIGGER_PATTERN"].set_value("m")
  kconf.syms["RTC_HCTOSYS"].set_value("y")
  kconf.syms["RTC_HCTOSYS_DEVICE"].set_value("rtc0")
  kconf.syms["RTC_INTF_SYSFS"].set_value("y")
  kconf.syms["RTC_INTF_PROC"].set_value("y")
  kconf.syms["RTC_INTF_DEV"].set_value("y")
  kconf.syms["ASYNC_TX_DMA"].set_value("y")
  kconf.syms["UDMABUF"].set_value("y")
  kconf.syms["ACPI_WMI"].set_value("m")
  kconf.syms["WMI_BMOF"].set_value("m")
  kconf.syms["ALIENWARE_WMI"].set_value("m")
  kconf.syms["HUAWEI_WMI"].set_value("m")
  kconf.syms["INTEL_WMI_THUNDERBOLT"].set_value("m")
  kconf.syms["MXM_WMI"].set_value("m")
  kconf.syms["PEAQ_WMI"].set_value("m")
  kconf.syms["IDEAPAD_LAPTOP"].set_value("m")
  kconf.syms["SENSORS_HDAPS"].set_value("m")
  kconf.syms["THINKPAD_ACPI_VIDEO"].set_value("y")
  kconf.syms["THINKPAD_ACPI_HOTKEY_POLL"].set_value("y")
  kconf.syms["INTEL_ATOMISP2_PM"].set_value("m")
  kconf.syms["INTEL_HID_EVENT"].set_value("m")
  kconf.syms["INTEL_OAKTRAIL"].set_value("m")
  kconf.syms["INTEL_VBTN"].set_value("m")
  kconf.syms["I2C_MULTI_INSTANTIATE"].set_value("m")
  kconf.syms["INTEL_IPS"].set_value("m")
  kconf.syms["INTEL_RST"].set_value("m")
  kconf.syms["INTEL_SMARTCONNECT"].set_value("y")
  kconf.syms["INTEL_SPEED_SELECT_INTERFACE"].set_value("m")
  kconf.syms["INTEL_TURBO_MAX_3"].set_value("y")
  kconf.syms["INTEL_PMC_CORE"].set_value("y")
  kconf.syms["INTEL_PUNIT_IPC"].set_value("m")
  kconf.syms["COMMON_CLK_SI544"].set_value("m")
  kconf.syms["HWSPINLOCK"].set_value("y")
  kconf.syms["I8253_LOCK"].set_value("y")
  kconf.syms["MAILBOX"].set_value("y")
  kconf.syms["PCC"].set_value("y")
  kconf.syms["XILINX_VCU"].set_value("m")
  kconf.syms["PM_DEVFREQ"].set_value("y")
  kconf.syms["DEVFREQ_GOV_SIMPLE_ONDEMAND"].set_value("m")
  kconf.syms["RAS"].set_value("y")
  kconf.syms["RAS_CEC"].set_value("y")
  kconf.syms["DAX"].set_value("y")
  kconf.syms["DEV_DAX"].set_value("m")
  kconf.syms["DEV_DAX_HMEM"].set_value("m")
  kconf.syms["DEV_DAX_HMEM_DEVICES"].set_value("y")
  kconf.syms["NVMEM"].set_value("y")
  kconf.syms["NVMEM_SYSFS"].set_value("y")
  kconf.syms["PM_OPP"].set_value("y")
  kconf.syms["EXT4_FS_POSIX_ACL"].set_value("y")
  kconf.syms["EXT4_FS_SECURITY"].set_value("y")
  kconf.syms["EXPORTFS_BLOCK_OPS"].set_value("y")
  kconf.syms["DNOTIFY"].set_value("y")
  kconf.syms["PROC_KCORE"].set_value("y")
  kconf.syms["PROC_VMCORE"].set_value("y")
  kconf.syms["PROC_VMCORE_DEVICE_DUMP"].set_value("y")
  kconf.syms["PROC_SYSCTL"].set_value("y")
  kconf.syms["PROC_PAGE_MONITOR"].set_value("y")
  kconf.syms["HUGETLBFS"].set_value("y")
  kconf.syms["HUGETLB_PAGE"].set_value("y")
  kconf.syms["CONFIGFS_FS"].set_value("m")
  kconf.syms["EFIVAR_FS"].set_value("m")
  kconf.syms["NLS_DEFAULT"].set_value("utf8")
  kconf.syms["NLS_CODEPAGE_437"].set_value("y")
  kconf.syms["NLS_ASCII"].set_value("y")
  kconf.syms["NLS_UTF8"].set_value("y")
  kconf.syms["UNICODE"].set_value("y")
  kconf.syms["IO_WQ"].set_value("y")
  kconf.syms["KEYS_REQUEST_CACHE"].set_value("y")
  kconf.syms["PERSISTENT_KEYRINGS"].set_value("y")
  kconf.syms["TRUSTED_KEYS"].set_value("m")
  kconf.syms["ENCRYPTED_KEYS"].set_value("y")
  kconf.syms["KEY_DH_OPERATIONS"].set_value("y")
  kconf.syms["SECURITYFS"].set_value("y")
  kconf.syms["PAGE_TABLE_ISOLATION"].set_value("y")
  kconf.syms["HAVE_HARDENED_USERCOPY_ALLOCATOR"].set_value("y")
  kconf.syms["HARDENED_USERCOPY"].set_value("y")
  kconf.syms["HARDENED_USERCOPY_FALLBACK"].set_value("y")
  kconf.syms["FORTIFY_SOURCE"].set_value("y")
  kconf.syms["LSM"].set_value("yama,loadpin,safesetid,integrity,selinux,smack,tomoyo,apparmor")
  kconf.syms["CRYPTO_RNG"].set_value("y")
  kconf.syms["CRYPTO_RNG_DEFAULT"].set_value("m")
  kconf.syms["CRYPTO_KPP"].set_value("y")
  kconf.syms["CRYPTO_USER"].set_value("m")
  kconf.syms["CRYPTO_GF128MUL"].set_value("y")
  kconf.syms["CRYPTO_PCRYPT"].set_value("m")
  kconf.syms["CRYPTO_CRYPTD"].set_value("y")
  kconf.syms["CRYPTO_SIMD"].set_value("y")
  kconf.syms["CRYPTO_GLUE_HELPER_X86"].set_value("y")
  kconf.syms["CRYPTO_DH"].set_value("y")
  kconf.syms["CRYPTO_ECC"].set_value("m")
  kconf.syms["CRYPTO_ECDH"].set_value("m")
  kconf.syms["CRYPTO_GCM"].set_value("y")
  kconf.syms["CRYPTO_CTR"].set_value("y")
  kconf.syms["CRYPTO_ECB"].set_value("y")
  kconf.syms["CRYPTO_XTS"].set_value("y")
  kconf.syms["CRYPTO_CRC32C_INTEL"].set_value("m")
  kconf.syms["CRYPTO_CRCT10DIF"].set_value("y")
  kconf.syms["CRYPTO_GHASH"].set_value("y")
  kconf.syms["CRYPTO_MD5"].set_value("y")
  kconf.syms["CRYPTO_SHA1"].set_value("y")
  kconf.syms["CRYPTO_SHA1_SSSE3"].set_value("y")
  kconf.syms["CRYPTO_SHA256_SSSE3"].set_value("y")
  kconf.syms["CRYPTO_AES"].set_value("y")
  kconf.syms["CRYPTO_AES_NI_INTEL"].set_value("y")
  kconf.syms["CRYPTO_SERPENT"].set_value("m")
  kconf.syms["CRYPTO_SERPENT_SSE2_X86_64"].set_value("m")
  kconf.syms["CRYPTO_SERPENT_AVX_X86_64"].set_value("m")
  kconf.syms["CRYPTO_SERPENT_AVX2_X86_64"].set_value("m")
  kconf.syms["CRYPTO_DRBG_MENU"].set_value("y")
  kconf.syms["CRYPTO_DRBG_HMAC"].set_value("y")
  kconf.syms["CRYPTO_DRBG_HASH"].set_value("y")
  kconf.syms["CRYPTO_DRBG_CTR"].set_value("y")
  kconf.syms["CRYPTO_DRBG"].set_value("y")
  kconf.syms["CRYPTO_JITTERENTROPY"].set_value("y")
  kconf.syms["CRYPTO_USER_API_SKCIPHER"].set_value("y")
  kconf.syms["CRYPTO_USER_API_RNG"].set_value("m")
  kconf.syms["CRYPTO_USER_API_AEAD"].set_value("y")
  kconf.syms["CRYPTO_LIB_AES"].set_value("y")
  kconf.syms["ASYMMETRIC_TPM_KEY_SUBTYPE"].set_value("m")
  kconf.syms["PKCS8_PRIVATE_KEY_PARSER"].set_value("m")
  kconf.syms["TPM_KEY_PARSER"].set_value("m")
  kconf.syms["SIGNED_PE_FILE_VERIFICATION"].set_value("y")
  kconf.syms["SECONDARY_TRUSTED_KEYRING"].set_value("y")
  kconf.syms["SYSTEM_BLACKLIST_KEYRING"].set_value("y")
  kconf.syms["SYSTEM_BLACKLIST_HASH_LIST"].set_value("")
  kconf.syms["PACKING"].set_value("y")
  kconf.syms["CORDIC"].set_value("m")
  kconf.syms["CRC_CCITT"].set_value("y")
  kconf.syms["CRC_T10DIF"].set_value("y")
  kconf.syms["CRC_ITU_T"].set_value("m")
  kconf.syms["CRC64"].set_value("m")
  kconf.syms["CRC4"].set_value("m")
  kconf.syms["CRC7"].set_value("m")
  kconf.syms["LIBCRC32C"].set_value("m")
  kconf.syms["CRC8"].set_value("m")
  kconf.syms["ZLIB_DEFLATE"].set_value("y")
  kconf.syms["XZ_DEC"].set_value("y")
  kconf.syms["XZ_DEC_X86"].set_value("y")
  kconf.syms["XZ_DEC_POWERPC"].set_value("y")
  kconf.syms["XZ_DEC_IA64"].set_value("y")
  kconf.syms["XZ_DEC_ARM"].set_value("y")
  kconf.syms["XZ_DEC_ARMTHUMB"].set_value("y")
  kconf.syms["XZ_DEC_SPARC"].set_value("y")
  kconf.syms["XZ_DEC_BCJ"].set_value("y")
  kconf.syms["CHECK_SIGNATURE"].set_value("y")
  kconf.syms["CPUMASK_OFFSTACK"].set_value("y")
  kconf.syms["IRQ_POLL"].set_value("y")
  kconf.syms["UCS2_STRING"].set_value("y")
  kconf.syms["FONTS"].set_value("y")
  kconf.syms["FONT_8x8"].set_value("n")
  kconf.syms["FONT_6x10"].set_value("y")
  kconf.syms["FONT_TER16x32"].set_value("y")
  kconf.syms["MEMREGION"].set_value("y")
  kconf.syms["PRINTK_TIME"].set_value("y")
  kconf.syms["CONSOLE_LOGLEVEL_QUIET"].set_value("3")
  kconf.syms["BOOT_PRINTK_DELAY"].set_value("y")
  kconf.syms["FRAME_WARN"].set_value("2048")
  kconf.syms["STRIP_ASM_SYMS"].set_value("y")
  kconf.syms["SECTION_MISMATCH_WARN_ONLY"].set_value("y")
  kconf.syms["DEBUG_FS"].set_value("y")
  kconf.syms["DEBUG_FS_ALLOW_ALL"].set_value("y")
  kconf.syms["DEBUG_RODATA_TEST"].set_value("y")
  kconf.syms["DEBUG_WX"].set_value("y")
  kconf.syms["PTDUMP_CORE"].set_value("y")
  kconf.syms["SCHED_STACK_END_CHECK"].set_value("y")
  kconf.syms["DEBUG_VM"].set_value("y")
  kconf.syms["DEBUG_VM_PGTABLE"].set_value("y")
  kconf.syms["LOCKUP_DETECTOR"].set_value("y")
  kconf.syms["SOFTLOCKUP_DETECTOR"].set_value("y")
  kconf.syms["BOOTPARAM_SOFTLOCKUP_PANIC_VALUE"].set_value("0")
  kconf.syms["HARDLOCKUP_DETECTOR_PERF"].set_value("y")
  kconf.syms["HARDLOCKUP_DETECTOR"].set_value("y")
  kconf.syms["BOOTPARAM_HARDLOCKUP_PANIC_VALUE"].set_value("0")
  kconf.syms["DETECT_HUNG_TASK"].set_value("y")
  kconf.syms["DEFAULT_HUNG_TASK_TIMEOUT"].set_value("120")
  kconf.syms["BOOTPARAM_HUNG_TASK_PANIC_VALUE"].set_value("0")
  kconf.syms["SCHED_DEBUG"].set_value("y")
  kconf.syms["SCHED_INFO"].set_value("y")
  kconf.syms["SCHEDSTATS"].set_value("y")
  kconf.syms["DEBUG_LIST"].set_value("y")
  kconf.syms["BUG_ON_DATA_CORRUPTION"].set_value("y")
  kconf.syms["TORTURE_TEST"].set_value("m")
  kconf.syms["RCU_TORTURE_TEST"].set_value("m")
  kconf.syms["RCU_CPU_STALL_TIMEOUT"].set_value("60")
  kconf.syms["STRICT_DEVMEM"].set_value("y")
  kconf.syms["IO_STRICT_DEVMEM"].set_value("y")
  kconf.syms["UNWINDER_ORC"].set_value("y")
  kconf.syms["UNWINDER_GUESS"].set_value("n")
  kconf.syms["TICK_CPU_ACCOUNTING"].set_value("n")
  kconf.syms["ACPI_CUSTOM_DSDT_FILE"].set_value("n")
  kconf.syms["ARCH_SUPPORTS_KMAP_LOCAL_FORCE_MAP"].set_value("n")
