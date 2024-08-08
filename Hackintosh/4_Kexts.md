--------------------------------------------------------------------------------------------------------------------------
## <p align='center'> [Création d'une Clé d'installation HackinTosh (Partie 4)](https://dortania.github.io/OpenCore-Install-Guide/ktext.html#firmware-drivers) </p>

--------------------------------------------------------------------------------------------------------------------------
## I. Présentation
### A. Qu'est ce qu'un Kexts ?
Un Kexts est un pilote pour le matériel ou une fonction permettant de faire fonctionner le système.

### B. SSDTime
```
- Page : https://dortania.github.io/OpenCore-Install-Guide/ktext.html#desktop
- AMD (17/19h) : SSDT-EC-USB
```

<br />

--------------------------------------------------------------------------------------------------------------------------
## II. Pilotes (Bios)
### A. OpenRuntime (Requis)
> Extension pour OpenCore pour aider à patcher boot.efi pour des corrections NVRAM et une meilleure gestion de la mémoire.

### C. HfsPlus (Requis)
> Nécessaire pour visualiser les volumes HFS (c'est-à-dire les installateurs macOS et les partitions/images de récupération).

<br />

--------------------------------------------------------------------------------------------------------------------------
## III. Pilotes (Matériel)
Pour avoir la log des événements au démarrage, on privilégera la version DEBUG.

### A. Lilu (Requis)
> Un kext pour patcher de nombreux processus, nécessaire pour AppleALC, WhateverGreen, VirtualSMC et de nombreux autres kexts.
>
> Sans Lilu, ils ne fonctionneront pas.
```
https://github.com/acidanthera/Lilu/releases
```

<br />

### B. VirtualSMC (Requis)
> Emule la puce SMC que l'on trouve que sur les vrais macs, sans laquelle macOS ne démarre pas.
```
https://github.com/acidanthera/VirtualSMC/releases
```

<br />

### C. SMCAMDProcessor (Requis)
> Utilisé pour surveiller la température du processeur sur les systèmes AMD Zen. (Requiert AMDRyzenCPUPowerManagement)
>
```
https://github.com/trulyspinach/SMCAMDProcessor/releases
```

<br />

### D. RadeonSensor (Optionnel)
> Utilisé pour surveiller la température du GPU sur les systèmes GPU AMD. (Nécessite RadeonSensor du même dépôt)
>
> Note: This repository has been archived by the owner on Jun 24, 2023. It is now read-only.
```
https://github.com/aluveitie/RadeonSensor
```

<br />

### E. WhateverGreen (Requis)
> Utilisé pour les correctifs graphiques, les corrections de DRM, les vérifications d'ID de carte, les corrections de framebuffer, etc ; tous les GPU bénéficient de ce kext.
```
https://github.com/acidanthera/WhateverGreen/releases
```

<br />

### F. AppleALC (Requis)
>  Utilisé pour le patching AppleHDA, permettant la prise en charge de la majorité des contrôleurs de son embarqués.

```
https://github.com/acidanthera/AppleALC/releases
```

<br />

### G. AppleIGB (Requis)
> Nécessaire pour les cartes réseau I211 fonctionnant sous macOS Monterey (11.2) et supérieur.
```
https://github.com/donatengit/AppleIGB/releases
```

<br />

### H. AppleMCEReporterDisabler (Requis)
> Nécessaire sous macOS 12.3 et versions ultérieures sur les systèmes AMD, et sous macOS 10.15. (MacPro6,1 | MacPro7,1 | iMacPro1,1)
```
https://github.com/acidanthera/bugtracker/files/3703498/AppleMCEReporterDisabler.kext.zip
```

<br />

### I. NVMeFix
> Utilisé pour corriger la gestion de l'alimentation et l'initialisation sur les NVMe non-Apple (nécessite macOS 10.14 ou une version plus récente).
```
https://github.com/acidanthera/NVMeFix/releases
```

<br />

### J. Arborescence
```
C:.
│   OpenCore.efi
│
├───ACPI
├───Drivers
│       HfsPlus.efi
│       OpenCanopy.efi
│       OpenRuntime.efi
│
├───Kexts
│   │   alc-verb
│   │
│   ├───AMDRyzenCPUPowerManagement.kext
│   │   └───Contents
│   │       │   Info.plist
│   │       │
│   │       ├───MacOS
│   │       │       AMDRyzenCPUPowerManagement
│   │       │
│   │       └───_CodeSignature
│   │               CodeResources
│   │
│   ├───AppleALC.kext
│   │   └───Contents
│   │       │   Info.plist
│   │       │
│   │       └───MacOS
│   │               AppleALC
│   │
│   ├───AppleIGB.kext
│   │   └───Contents
│   │       │   Info.plist
│   │       │
│   │       ├───MacOS
│   │       │       AppleIGB
│   │       │
│   │       └───_CodeSignature
│   │               CodeResources
│   │
│   ├───AppleMCEReporterDisabler.kext
│   │   └───Contents
│   │           Info.plist
│   │
│   ├───Lilu.kext
│   │   └───Contents
│   │       │   Info.plist
│   │       │
│   │       ├───MacOS
│   │       │       Lilu
│   │       │
│   │       └───Resources
│   │           ├───Headers
│   │           │   │   hde32.h
│   │           │   │   hde64.h
│   │           │   │   kern_api.hpp
│   │           │   │   kern_compat.hpp
│   │           │   │   kern_compression.hpp
│   │           │   │   kern_config.hpp
│   │           │   │   kern_cpu.hpp
│   │           │   │   kern_crypto.hpp
│   │           │   │   kern_devinfo.hpp
│   │           │   │   kern_disasm.hpp
│   │           │   │   kern_efi.hpp
│   │           │   │   kern_file.hpp
│   │           │   │   kern_iokit.hpp
│   │           │   │   kern_mach.hpp
│   │           │   │   kern_nvram.hpp
│   │           │   │   kern_patcher.hpp
│   │           │   │   kern_policy.hpp
│   │           │   │   kern_rtc.hpp
│   │           │   │   kern_time.hpp
│   │           │   │   kern_user.hpp
│   │           │   │   kern_util.hpp
│   │           │   │   kern_version.hpp
│   │           │   │   plugin_start.hpp
│   │           │   │
│   │           │   └───capstone
│   │           │           arm.h
│   │           │           arm64.h
│   │           │           capstone.h
│   │           │           mips.h
│   │           │           platform.h
│   │           │           ppc.h
│   │           │           sparc.h
│   │           │           systemz.h
│   │           │           x86.h
│   │           │           xcore.h
│   │           │
│   │           └───Library
│   │               │   plugin_start.cpp
│   │               │
│   │               └───wrappers
│   │                       build.tool
│   │                       entry32.S
│   │                       entry64.S
│   │                       wrappers.inc
│   │
│   ├───NVMeFix.kext
│   │   └───Contents
│   │       │   Info.plist
│   │       │
│   │       └───MacOS
│   │               NVMeFix
│   │
│   ├───SMCAMDProcessor.kext
│   │   └───Contents
│   │       │   Info.plist
│   │       │
│   │       ├───MacOS
│   │       │       SMCAMDProcessor
│   │       │
│   │       └───_CodeSignature
│   │               CodeResources
│   │
│   ├───Tools
│   │       libaistat.dylib
│   │       rtcread
│   │       smc
│   │       smcread
│   │
│   ├───VirtualSMC.kext
│   │   └───Contents
│   │       │   Info.plist
│   │       │
│   │       ├───MacOS
│   │       │       VirtualSMC
│   │       │
│   │       └───Resources
│   │           └───VirtualSMCSDK
│   │                   AppleSmc.h
│   │                   AppleSmcBridge.hpp
│   │                   kern_keyvalue.hpp
│   │                   kern_smcinfo.hpp
│   │                   kern_value.hpp
│   │                   kern_vsmcapi.hpp
│   │
│   ├───WhateverGreen.kext
│   │   └───Contents
│   │       │   Info.plist
│   │       │
│   │       └───MacOS
│   │               WhateverGreen
│   │
│   └───__MACOSX
│       │   ._AppleMCEReporterDisabler.kext
│       │
│       ├───AMDRyzenCPUPowerManagement.kext
│       │   │   ._Contents
│       │   │
│       │   └───Contents
│       │       │   ._Info.plist
│       │       │   ._MacOS
│       │       │   .__CodeSignature
│       │       │
│       │       ├───MacOS
│       │       │       ._AMDRyzenCPUPowerManagement
│       │       │
│       │       └───_CodeSignature
│       │               ._CodeResources
│       │
│       ├───AppleMCEReporterDisabler.kext
│       │   │   ._Contents
│       │   │
│       │   └───Contents
│       │           ._Info.plist
│       │
│       └───SMCAMDProcessor.kext
│           │   ._Contents
│           │
│           └───Contents
│               │   ._Info.plist
│               │   ._MacOS
│               │   .__CodeSignature
│               │
│               ├───MacOS
│               │       ._SMCAMDProcessor
│               │
│               └───_CodeSignature
│                       ._CodeResources
│
├───Resources
│   ├───Audio
│   ├───Font
│   ├───Image
│   └───Label
└───Tools
        OpenShell.efi
```










<br />
<br />
<br />

--------------------------------------------------------------------------------------------------------------------------
## IV. Sources
```
https://dortania.github.io/OpenCore-Install-Guide/ktext.html#firmware-drivers
https://dortania.github.io/Getting-Started-With-ACPI/Universal/ec-fix.html
```
