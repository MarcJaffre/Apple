--------------------------------------------------------------------------------------------------------------
# <p align='center'> Installation de Sonoma dans Virtualbox (KO) </p>

--------------------------------------------------------------------------------------------------------------
## I. Création et configuration de la Machine Virtuelle
### A. Mac OS
L'image utilisé est [Sonoma 14.iso](https://archive.org/details/macOS-X-images) et l'hyperviseur utilisé est virtualbox 7. (Ressources en bas)
#### 1. Virtualbox
```
[Creation de la VM]
- Nom                 : MacOS Sonoma
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
#### 1. CPU AMD
```bash
clear;
VBoxManage modifyvm      "MacOS Sonoma"  --cpu-profile "Intel Core i7-6700K"
```

#### 2. VirtualBox
```bash
clear;
VBoxManage modifyvm      "MacOS Sonoma"  --cpuidset 00000001 000106e5 00100800 0098e3fd bfebfbff
VBoxManage modifyvm      "MacOS Sonoma"  --vram 256
```

#### 3. DMI
```bash
clear;
VBoxManage setextradata  "MacOS Sonoma"  "VBoxInternal/Devices/efi/0/Config/DmiBoardProduct"    "Mac-551B86E5744E2388"
VBoxManage setextradata  "MacOS Sonoma"  "VBoxInternal/Devices/efi/0/Config/DmiSystemProduct"   "MacBookPro15,1"
VBoxManage setextradata  "MacOS Sonoma"  "VBoxInternal/Devices/efi/0/Config/DmiSystemVersion"   "1.0"
```


#### 4. SMC
```bash
clear;
VBoxManage setextradata  "MacOS Sonoma"  "VBoxInternal/Devices/smc/0/Config/DeviceKey"          "ourhardworkbythesewordsguardedpleasedontsteal(c)AppleComputerInc"
VBoxManage setextradata  "MacOS Sonoma"  "VBoxInternal/Devices/smc/0/Config/GetKeyFromRealSMC"  "0"
```

#### 5. TM
```bash
clear;
VBoxManage setextradata  "MacOS Sonoma"  "VBoxInternal/TM/TSCMode"                              "RealTSCOffset"
```

#### 6. EFI GPU
```bash
clear;
#VBoxManage setextradata  "MacOS Sonoma"  VBoxInternal2/EfiGraphicsResolution                    "1920x1080"
```

<br />

--------------------------------------------------------------------------------------------------------------
## II. Installation de MacOS Sonoma







--------------------------------------------------------------------------------------------------------------
### Sources:
```
https://www.sysnettechsolutions.com/en/install-macos-virtualbox/
```

