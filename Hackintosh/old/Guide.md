-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
## <p align='center'> Installation de Mac OS sur PC </p>

-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
## I. Information de base
### A. Matériel ([Doc]())
```
- Carte-mère : Asus Prime X570
- Processeurs: Ryzen 7 3700x (Zen 2)
```

### B. Chipset ([X570](https://www.asus.com/fr/motherboards-components/motherboards/prime/prime-x570-pro/techspec))
```
- Audio    : Realtek S1220A
- Ethernet : Intel   I211-AT
```

### C. BIOS 

Guide : [1](https://github.com/dortania/OpenCore-Install-Guide/blob/master/AMD/zen.md#amd-bios-settings) | [2](https://dortania.github.io/OpenCore-Install-Guide/AMD/zen.html) 
```
- TPM : TPM Firmware
- Démarrage par défaut: PCIe
- Désactiver le démarrage via l'iGPU dans le bios.
- Activer la virtualisation
```

### D. CPU AMD
```
- [Zen2] https://en.wikipedia.org/wiki/Zen_2
- https://dortania.github.io/OpenCore-Install-Guide/AMD/zen.html#kernel
- https://github.com/dortania/OpenCore-Install-Guide/blob/master/AMD/zen.md
```

### E. Sources
```
- [Video]    https://www.youtube.com/watch?v=BfcdklKjvY4
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

<br />

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
> 
> Dump the current system's ACPI tables

<p align='center'> <img src="" /> </p>

<br />

### D. Select ACPI table or folder containing tables
> Permet de charger les fichiers ACPI dans l'outil SSDTTime.
> 
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
- [General] https://github.com/acidanthera/OpenCorePkg/releases
- [Zen]     https://github.com/dortania/OpenCore-Install-Guide/blob/master/AMD/zen.md
- [AMD Zen 2 Family 17h]  https://en.wikipedia.org/wiki/Zen_2
```


<br />

## B. EFI
> Déplacer le dossier .\OpenCore\X64\EFI du dossier .\OpenCore.

<br />

## C. SSDTTime (ACPI)
> Copier les fichiers .\SSDTTime-master\Results\*.aml ==> .\X64\EFI\OC\ACPI.

<br />

## D. Config.plist
> Copier le fichier .\OpenCore\Docs\Sample.plist ==> .\X64\EFI\OC\config.plist

<br />


## E. EFI Drivers ([Complements](https://github.com/acidanthera/OpenCorePkg/blob/1.0.1/Docs/Kexts.md))
> Le boot EFI utilise des pilotes pour gérer les interactions nécessaires aux instructions. (X64\EFI\OC\Drivers)
>
> Boot, clavier, souris, correctif mémoire à chaud, prise en charge HFS/NTFS ....

```
- OpenHFSPlus   : Indispensable pour les systèmes Apple sous HFS
- OpenRuntTime  : Indispensable pour les corrections de mémoire (nvram)
- OpenCanopy    : 
```

<br />
<br />

-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
# V. Génération du fichier config (Base)
## A. [ProperTree](https://github.com/corpnewt/ProperTree/archive/refs/heads/master.zip)
### 1. Présentation de l'outil
> Le logiciel ProperTree permet de générer le fichier de configuration qui sera utilisé lors du démarrage de la clé USB.

### 2. Ouverture du fichier config
> Cliquer sur File puîs sur Open et sélectionner le fichier .\X64\EFI\OC\config.plist.

### 3. Snapshot
> Permet de générer le fichier config.plist avec les pilotes présents dans .\X64\EFI\OC\. (ACPI, Drivers, Kexts, Resources, Tools)
> 
> File > OC Snapshot > .\X64\EFI\OC\

### 4. Sauvegarder le fichier
Le fichier en état est pas bon, car il manque pas mal de chose.

<br />

-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
# VI. Configuration Personnalisée
## A. Guide ACPI
```
https://dortania.github.io/Getting-Started-With-ACPI/
```

## B. ACPI
### 1. ADD
### 2. Delete
### 3. Patch
### 4. Quirks



<br />

## X. 
### X. 

<br />



-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
# VII. [Préparation de la clé USB](https://dortania.github.io/OpenCore-Install-Guide/installer-guide/windows-install.html#downloading-macos)
## A. MacRecovery
> Lancer la commande python pour vérifier qu'elle fonctionne. Remplacer la commande python3 par python.

```bash
cd C:\Users\Marc\Desktop\OpenCore\Utilities\macrecovery

# Lion (10.7):
python macrecovery.py -b Mac-2E6FAB96566FE58C -m 00000000000F25Y00 download
python macrecovery.py -b Mac-C3EC7CD22292981F -m 00000000000F0HM00 download

# Mountain Lion (10.8):
python macrecovery.py -b Mac-7DF2A3B5E5D671ED -m 00000000000F65100 download

# Mavericks (10.9):
python macrecovery.py -b Mac-F60DEB81FF30ACF6 -m 00000000000FNN100 download

# Yosemite (10.10):
python macrecovery.py -b Mac-E43C1C25D4880AD6 -m 00000000000GDVW00 download

# El Capitan (10.11):
python macrecovery.py -b Mac-FFE5EF870D7BA81A -m 00000000000GQRX00 download

# Sierra (10.12):
python macrecovery.py -b Mac-77F17D7DA9285301 -m 00000000000J0DX00 download

# High Sierra (10.13)
python macrecovery.py -b Mac-7BA5B2D9E42DDD94 -m 00000000000J80300 download
python macrecovery.py -b Mac-BE088AF8C5EB4FA2 -m 00000000000J80300 download

# Mojave (10.14)
python macrecovery.py -b Mac-7BA5B2DFE22DDD8C -m 00000000000KXPG00 download

# Catalina (10.15)
python macrecovery.py -b Mac-00BE6ED71E35EB86 -m 00000000000000000 download

# Big Sur (11)
python macrecovery.py -b Mac-42FD25EABCABB274 -m 00000000000000000 download

# Monterey (12)
python macrecovery.py -b Mac-FFE5EF870D7BA81A -m 00000000000000000 download

# Ventura (13)
python macrecovery.py -b Mac-4B682C642B45593E -m 00000000000000000 download

# Sonoma (14)
python macrecovery.py -b Mac-937A206F2EE63C01 -m 00000000000000000 download
```

## B. Rufus
> Formater la clé USB en Fat32.

![image](https://github.com/user-attachments/assets/5efc3953-fcd9-428e-8a72-ae2f02a4b702)

## C. Clé USB.
> Copier le dossier OpenCore\Utilities\macrecovery\com.apple.recovery.boot ==> USB KEY. (BaseSystem.chunklist et BaseSystem.dmg)
> 
> Copier le dossier X64\EFI ==> USB KEY
> 

-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
## X. Prise de Note
```
Assurez-vous de fusionner le contenu de patches_[OC/****].plist avec votre config.plist !
> FixHPET
> FakeEC
> FakeEC Laptop
> USBX
> PluginType
> PMC
> RTCAWAC
> USB Reset
> PCI Bridge
> PNLF
> XOSI
> Fix DMAR
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