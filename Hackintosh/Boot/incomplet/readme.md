Le fichier de config suivant permet un semblant de démarrage

```

├── BOOT
│   └── BOOTx64.efi
└── OC
    ├── config.plist
    ├── ACPI
    │   ├── SSDT-EC.aml      <<= Doc\AcpiSamples\Binaries\ OU par SSDTIME 
    │   └── SSDT-EC-USBX.aml <<= Doc\AcpiSamples\Binaries\ 
    │
    ├── Drivers
    │   ├── HfsPlus.efi
    │   └── OpenRuntime.efi 
    │
    ├── Kexts
    │   ├── AMDRyzenCPUPowerManagement.kext
    │   │   └── Contents
    │   │       ├── _CodeSignature
    │   │       │   └── CodeResources
    │   │       ├── Info.plist
    │   │       └── MacOS
    │   │           └── AMDRyzenCPUPowerManagement 
    │   |
    │   ├── AppleALC.kext
    │   │   └── Contents
    │   │       ├── Info.plist
    │   │       └── MacOS
    │   │           └── AppleALC
    │   |
    │   ├── AppleMCEReporterDisabler.kext
    │   │   └── Contents
    │   │       └── Info.plist
    │   |
    │   ├── CpuTscSync.kext  ===> Si c'est Friend alors sa pose problème
    │   │   └── Contents
    │   │       ├── Info.plist
    │   │       └── MacOS
    │   │           └── CpuTscSync
    │   |
    │   ├── Lilu.kext
    │   │   └── Contents
    │   │       ├── Info.plist
    │   │       ├── MacOS
    │   │       │   └── Lilu
    │   │       └── Resources
    │   │           ├── Headers
    │   │           │   ├── capstone
    │   │           │   │   ├── arm64.h
    │   │           │   │   ├── arm.h
    │   │           │   │   ├── capstone.h
    │   │           │   │   ├── mips.h
    │   │           │   │   ├── platform.h
    │   │           │   │   ├── ppc.h
    │   │           │   │   ├── sparc.h
    │   │           │   │   ├── systemz.h
    │   │           │   │   ├── x86.h
    │   │           │   │   └── xcore.h
    │   │           │   ├── hde32.h
    │   │           │   ├── hde64.h
    │   │           │   ├── kern_api.hpp
    │   │           │   ├── kern_compat.hpp
    │   │           │   ├── kern_compression.hpp
    │   │           │   ├── kern_config.hpp
    │   │           │   ├── kern_cpu.hpp
    │   │           │   ├── kern_crypto.hpp
    │   │           │   ├── kern_devinfo.hpp
    │   │           │   ├── kern_disasm.hpp
    │   │           │   ├── kern_efi.hpp
    │   │           │   ├── kern_file.hpp
    │   │           │   ├── kern_iokit.hpp
    │   │           │   ├── kern_mach.hpp
    │   │           │   ├── kern_nvram.hpp
    │   │           │   ├── kern_patcher.hpp
    │   │           │   ├── kern_policy.hpp
    │   │           │   ├── kern_rtc.hpp
    │   │           │   ├── kern_time.hpp
    │   │           │   ├── kern_user.hpp
    │   │           │   ├── kern_util.hpp
    │   │           │   ├── kern_version.hpp
    │   │           │   └── plugin_start.hpp
    │   │           └── Library
    │   │               ├── plugin_start.cpp
    │   │               └── wrappers
    │   │                   ├── build.tool
    │   │                   ├── entry32.S
    │   │                   ├── entry64.S
    │   │                   └── wrappers.inc
    │   |
    │   |
    │   ├── NVMeFix.kext
    │   │   └── Contents
    │   │       ├── Info.plist
    │   │       └── MacOS
    │   │           └── NVMeFix
    │   |
    │   ├── RadeonSensor.kext
    │   │   └── Contents
    │   │       ├── _CodeSignature
    │   │       │   └── CodeResources
    │   │       ├── Info.plist
    │   │       └── MacOS
    │   │           └── RadeonSensor
    │   |
    │   |
    │   ├── RestrictEvents.kext
    │   │   └── Contents
    │   │       ├── Info.plist
    │   │       └── MacOS
    │   │           └── RestrictEvents
    │   ├── SMCAMDProcessor.kext
    │   │   └── Contents
    │   │       ├── _CodeSignature
    │   │       │   └── CodeResources
    │   │       ├── Info.plist
    │   │       └── MacOS
    │   │           └── SMCAMDProcessor
    │   ├── SMCRadeonGPU.kext
    │   │   └── Contents
    │   │       ├── _CodeSignature
    │   │       │   └── CodeResources
    │   │       ├── Info.plist
    │   │       └── MacOS
    │   │           └── SMCRadeonGPU
    │   ├── VirtualSMC.kext
    │   │   └── Contents
    │   │       ├── Info.plist
    │   │       ├── MacOS
    │   │       │   └── VirtualSMC
    │   │       └── Resources
    │   │           └── VirtualSMCSDK
    │   │               ├── AppleSmcBridge.hpp
    │   │               ├── AppleSmc.h
    │   │               ├── kern_keyvalue.hpp
    │   │               ├── kern_smcinfo.hpp
    │   │               ├── kern_value.hpp
    │   │               └── kern_vsmcapi.hpp
    │   └── WhateverGreen.kext
    │       └── Contents
    │           ├── Info.plist
    │           └── MacOS
    │               └── WhateverGreen
    ├── OpenCore.efi
    ├── Resources
    │   ├── Audio
    │   ├── Font
    │   ├── Image
    │   └── Label
    └── Tools
        └── OpenShell.efi

59 directories, 81 files
```
