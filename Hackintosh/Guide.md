-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
## <p align='center'> Installation de Mac OS sur PC </p>

-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
## I. Information de base
### A. Matériel ([Doc]())
```
- Carte-mère : Asus Prime X570 (https://www.asus.com/fr/motherboards-components/motherboards/prime/prime-x570-pro/techspec)
- Processeurs: Ryzen 7 3700x
```

### B. Chipset X570
```
- Audio    : Realtek® S1220A
- Ethernet : Intel® I211-AT
```

### C. Configuration du bios
```
- TPM : TPM Firmware
- Démarrage par défaut: PCIe
- Désactiver le démarrage via l'iGPU dans le bios.
- Activer la virtualisation
```

<br />

-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
## II. Pilotes de MacOS (Kexts)
### A. OpenCore
#### 1. Base
Le guide des Kext d'[Opencore](https://dortania.github.io/OpenCore-Install-Guide/ktext.html#kexts) contient la liste des Kexts utiles.

#### 2. Liste
La liste suivante n'est pas vérifié et fonctionnelle.
> Lilu
> 
> VirtualSMC
> 
> AppleALC
> 
> AppleIGB
> 
> SMCAMDProcessor
> 
> WhateverGreen
> 
> NVMeFix
> 
> XHCI-unsupported

<br />

### B. Indispensables
#### 1. [Lilu](https://github.com/acidanthera/Lilu)
> Un kext pour patcher de nombreux processus, requis pour AppleALC, WhichGreen, VirtualSMC et bien d'autres kexts. Sans Lilu, ils ne fonctionneront pas.
>
> Notez que même si Lilu prend en charge Mac OS X 10.4, de nombreux plugins ne fonctionnent que sur les versions plus récentes.


#### 2. [VirtualSMC](https://github.com/acidanthera/VirtualSMC)
> Émule la puce SMC trouvée sur les vrais Mac, sans cela macOS ne démarrera pas Nécessite Mac OS X 10.4 ou version ultérieure.

<br />

### C. Audio
#### 1. [AppleALC](https://github.com/acidanthera/AppleALC/)
> Utilisé pour le patch AppleHDA, permettant la prise en charge de la majorité des contrôleurs audio intégrés.
> 
> AppleALCU.kext est une version simplifiée d'AppleALC qui ne prend en charge que l'audio numérique - mais vous pouvez toujours utiliser AppleALC.kext sur les systèmes uniquement audio numériques.
>
> Les systèmes AMD 15h/16h peuvent avoir des problèmes avec AppleALC et les systèmes Ryzen/Threadripper prennent rarement en charge les micros.
> 
> Nécessite OS X 10.4 ou une version plus récente

<br />

### D. Ethernet
#### 1. [AppleIGB](https://github.com/donatengit/AppleIGB) (Ethernet)
> Requis pour les cartes réseau I211 exécutées sur macOS Monterey et versions ultérieures.
> 
> Il peut y avoir des problèmes d'instabilité sur certaines cartes réseau, il est recommandé de rester sur Big Sur et d'utiliser SmallTree.
> 
> Requis pour la plupart des cartes AMD exécutant des cartes réseau Intel.
> 
> Nécessite macOS 12 et versions ultérieures

<br />

### E. Graphics
#### 1. [SMCAMDProcessor](https://github.com/trulyspinach/SMCAMDProcessor) (Plugin VirtualSMC)
> **En cours de développement, potentiellement instable**
>
> Utilisé pour surveiller la température du processeur sur les systèmes basés sur AMD Zen.
> 
> Nécessite AMDRyzenCPUPowerManagement. (voir Kexts spécifiques au processeur AMD)
> 
> Nécessite macOS 10.13 ou une version plus récente.

#### 2. [WhateverGreen](https://github.com/acidanthera/WhateverGreen/)
> Utilisé pour les correctifs graphiques, les correctifs DRM, les vérifications d'ID de carte, les correctifs de framebuffer, etc.; tous les GPU bénéficient de ce kext.

<br />

### F. NVME
#### 1. [NVMeFix](https://github.com/acidanthera/NVMeFix/releases)
> Utilisé pour corriger la gestion de l'alimentation et l'initialisation sur les NVMe non Apple.
> 
> Note: Nécessite Mac OS X 10.6 ou plus récent.

<br />

### G. USB
#### 1. [XHCI-unsupported](https://github.com/RehabMan/OS-X-USB-Inject-All)
> Nécessaire pour les contrôleurs USB non natifs.
> 
> Les systèmes basés sur un processeur AMD n'en ont pas besoin.

<br />
<br />

-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
# III. Génération de la Table ACPI
## A. Présentation
> AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA

<br />

## B. Téléchargement de l'outil [SDDTTIME](https://github.com/corpnewt/SSDTTime/archive/refs/heads/master.zip)
> Le logiciel permet d'extraire les tables ACPI qui permet au système d'exploitation d'interargir avec la machine. (Vieille, reprise ....)
> 
> Lancer le fichier SSDTTime.bat

Lancer le fichier `SSDTTime.bat`.

<p align='center'> <img src="" /> </p>

<br />

## C. Dump the current system's ACPI tables
> Permet d'extraire la table ACPI du système.
> Dump the current system's ACPI tables

<p align='center'> <img src="" /> </p>

<br />

### D. Select ACPI table or folder containing tables
> Permet de charger les fichiers ACPI dans l'outil SSDTTime.
> Dans la fenetre indiquer le chemin du fîchier situé dans Results\ACPI\DSDT.aml

<p align='center'> <img src="" /> </p>

<br />

### 

<p align='center'> <img src="" /> </p>

<br />
<br />

-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
# IV. OpenCore (Base)
## A. Télécharger OpenCorePKG
Extraire le fichier compresser.
```
https://github.com/acidanthera/OpenCorePkg/releases
```

<br />

## C. Config.plist
> Copier le fichier OpenCore\Docs\Sample.plist ==> OpenCore\X64\EFI\config.plist

<br />

## D. EFI
> Déplacer le dossier OpenCore\X64\EFI du dossier OpenCore.

## E. SSDTTime (ACPI)
> Copier les fichiers SSDTTime-master\Results\*.aml ==>  X64\EFI\OC\ACPI.

## F. EFI Drivers ([Complements](https://github.com/acidanthera/OpenCorePkg/blob/1.0.1/Docs/Kexts.md))
> Le boot EFI utilise des pilotes pour gérer les interactions nécessaires aux instructions. (X64\EFI\OC\Drivers)
>
> Boot, clavier, souris, correctif mémoire à chaud, prise en charge HFS/NTFS ....

```
- OpenHFSPlus   : Indispensable pour les systèmes Apple sous HFS
- OpenRuntTime  : Indispensable pour les corrections de mémoire (nvram)
- OpenCanopy    : 
```



<br />

-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
# V. XXXXXXXXXXXXXXXXXXXXXXX

<br />

-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
# VI. XXXXXXXXXXXXXXXXXXXXXXX

<br />



-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
## X. Prise de Note
```
FixHPET
FakeEC
FakeEC Laptop
USBX
PluginType
PMC
RTCAWAC
USB Reset
PCI Bridge
PNLF
XOSI
Fix DMAR
Assurez-vous de fusionner le contenu de patches_[OC/Clover].plist avec votre config.plist !
```


```
- AudioDxe
- BiosVideo
- Ext4Dxe
- FirmwareSettingsEntry
- NvmExpressDxe
- OpenLinuxBoot
- OpenNtfsDxe
- OpenPartitionDxe
- OpenUsbKbDxe
- ResetNvramEntry
- UsbMouseDxe

- Dhcp4Dxe
- DnsDxe
- Ip4Dxe
- Udp4Dxe
```
