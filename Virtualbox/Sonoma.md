--------------------------------------------------------------------------------------------------------------
# <p align='center'> Installation de Sonoma dans Virtualbox (KO) </p>

--------------------------------------------------------------------------------------------------------------
## I. Création et configuration de la Machine Virtuelle

### A. Mac OS
L'image utilisé est [Sonoma 14.iso](https://archive.org/details/macOS-X-images) et l'hyperviseur utilisé est virtualbox 7. (Ressources en bas)
#### 1. Virtualbox
```
[Creation de la VM]
- Nom                 : MacOS Sonoma (14.0)
- Lecteur CD-ROM      : Sonoma 14.iso
- Type                : Mac OS X
- Version             : Mac OS X (64 bit)
- Mémoire-vive        : 4096 MB
- Processeur(s)       : 4 Cores / 8 Threads
- Stockage            : 60 Go

[Système]
- Ordre d'amoçage     : Optique
-> Fonctions avancées : IO-APIC, Clock in UTC Time, EFI

[Affichage]
- Mémoire Vidéo       : 128 Mo
- Contrôleur Graph.   : VMSVGA
-> Fonctions avancées : Activer l'accélération 3D (OFF)

[USB]
- Activer le controleur USB : OUI
-> Contrôleur 3.0 (xHCI)
```

<br />

### B. Bypass
```bash
/usr/bin/Bash

clear;

# HOST CPU AMD
VBoxManage modifyvm      "MacOS Sonoma (14.0)"  --cpu-profile "Intel Core i7-6700K"

# VirtualBox
VBoxManage modifyvm      "MacOS Sonoma (14.0)"  --cpuidset 00000001 000106e5 00100800 0098e3fd bfebfbff
VBoxManage modifyvm      "MacOS Sonoma (14.0)"  --vram 256

# DMI
VBoxManage setextradata  "MacOS Sonoma (14.0)"  "VBoxInternal/Devices/efi/0/Config/DmiBoardProduct"    "Mac-551B86E5744E2388"
VBoxManage setextradata  "MacOS Sonoma (14.0)"  "VBoxInternal/Devices/efi/0/Config/DmiSystemProduct"   "MacBookPro15,1"
VBoxManage setextradata  "MacOS Sonoma (14.0)"  "VBoxInternal/Devices/efi/0/Config/DmiSystemVersion"   "1.0"

# SMC
VBoxManage setextradata  "MacOS Sonoma (14.0)"  "VBoxInternal/Devices/smc/0/Config/DeviceKey"          "ourhardworkbythesewordsguardedpleasedontsteal(c)AppleComputerInc"
VBoxManage setextradata  "MacOS Sonoma (14.0)"  "VBoxInternal/Devices/smc/0/Config/GetKeyFromRealSMC"  "0"

# TM
VBoxManage setextradata  "MacOS Sonoma (14.0)"  "VBoxInternal/TM/TSCMode"                              "RealTSCOffset"

# EFI GPU
#VBoxManage setextradata  "MacOS Sonoma (14.0)"  VBoxInternal2/EfiGraphicsResolution                    "1920x1080"
```


------------------------
### Sources:
```
https://www.sysnettechsolutions.com/en/install-macos-virtualbox/
```

