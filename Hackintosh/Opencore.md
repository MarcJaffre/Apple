---------------------------------------------------------------------------------------------------------------
# <p align='center'> [Création d'une Clé Bootable sous Windows de Mac OS](https://github.com/acidanthera/OpenCorePkg/releases)

---------------------------------------------------------------------------------------------------------------
## I. Configuration du BIOS
### A. TPM Firmware
### B. GPU Primary (System Agent)
```
- Démarrage par défaut: PCIe
- Désactiver le démarrage via l'iGPU dans le bios.
```
### C. CPU Configuration
Activer la virtualisation

### D. Chipset [X570](https://www.asus.com/fr/motherboards-components/motherboards/prime/prime-x570-pro/techspec/)
```
- Audio   : Realtek® S1220A
- Ethernet: Intel® I211-AT
```

<br />

---------------------------------------------------------------------------------------------------------------
## II. ACPI
### A. [SDDTTIME](https://github.com/corpnewt/SSDTTime/archive/refs/heads/master.zip)
Le logiciel permet d'extraire les tables ACPI qui permet au système d'exploitation d'interargir avec la machine. (Vieille, reprise ....)

Lancer le fichier `SSDTTime.bat`.

![image](https://github.com/user-attachments/assets/79a60e7e-724e-4b39-a429-b631f2fb3195)

### B. Extraire la table ACPI
#### 1. Dump the current system's ACPI tables
```
- Menu de sélection : P
```
#### 2. Select ACPI table or folder containing tables
Il suffira de coller le chemin vers le fichier DSDT.aml
```
- Menu de sélection : D
- Copier le chemin  : .\SSDTTime-master\Results\ACPI
- Console           : .\SSDTTime-master\Results\ACPI\DSDT.aml
- Alternative       : .\SSDTTime-master\Results\ACPI
```

#### 3. FixHPET (Optionnel)
Assurez-vous de fusionner le contenu de patches_[OC/Clover].plist avec votre config.plist !

Ce menu génère des fichiers plist dans `SSDTTime-master\Results\ACPI\`

#### 4. FakeEC (Optionnel)
Assurez-vous de fusionner le contenu de patches_[OC/Clover].plist avec votre config.plist !

#### 5. FakeEC Laptop (Optionnel)
Assurez-vous de fusionner le contenu de patches_[OC/Clover].plist avec votre config.plist !

#### 4. USBX (Optionnel)
Assurez-vous de fusionner le contenu de patches_[OC/Clover].plist avec votre config.plist !

#### 5. PluginType (Optionnel)
Assurez-vous de fusionner le contenu de patches_[OC/Clover].plist avec votre config.plist !

#### 6. PMC (Optionnel)
Assurez-vous de fusionner le contenu de patches_[OC/Clover].plist avec votre config.plist !

#### 7. RTCAWAC (Optionnel)
Assurez-vous de fusionner le contenu de patches_[OC/Clover].plist avec votre config.plist !

#### 8. USB Reset (Optionnel)
Assurez-vous de fusionner le contenu de patches_[OC/Clover].plist avec votre config.plist !

#### 9. PCI Bridge (Optionnel)
Assurez-vous de fusionner le contenu de patches_[OC/Clover].plist avec votre config.plist !

#### 10. PNLF (Optionnel)
Assurez-vous de fusionner le contenu de patches_[OC/Clover].plist avec votre config.plist !

#### 11. XOSI (Optionnel)
Assurez-vous de fusionner le contenu de patches_[OC/Clover].plist avec votre config.plist !

#### 12. Fix DMAR (Optionnel)
Assurez-vous de fusionner le contenu de patches_[OC/Clover].plist avec votre config.plist !

<br />
<br />


---------------------------------------------------------------------------------------------------------------
## III. Préparation de l'environnement
### A. OpenCore
```
https://github.com/acidanthera/OpenCorePkg/releases
```

### B. EFI
```
- Extraire le fichier (7Zip)
- Déplacer  : .\X64\EFI           ==> Bureau
- Copier    : .\Docs\Sample.plist ==> Bureau\EFI\config.plist
- Supprimer : Resources et le contennu de Tools (optionnel)
```

### C. [Table ACPI](https://dortania.github.io/Getting-Started-With-ACPI/#a-quick-explainer-on-acpi)
Copier les fichiers `.\SSDTTime-master\Results\*.aml` dans le dossier `.\X64\EFI\ACPI`.


### C. [EFI Drivers](https://dortania.github.io/OpenCore-Install-Guide/ktext.html#firmware-drivers)
Supprimer tous les fichiers sauf :
```
- OpenHFSPlus   : Indispensable pour les systèmes Apple sous HFS
- OpenRuntTime  : Indispensable pour les corrections de mémoire (nvram)
- OpenCanopy    : 
```
Intéressant:
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

```
https://github.com/acidanthera/OpenCorePkg/blob/1.0.1/Docs/Kexts.md
```

<br />





---------------------------------------------------------------------------------------------------------------
## IV. [Kexts](https://dortania.github.io/OpenCore-Install-Guide/ktext.html#kexts)

### A. [Lilu](https://github.com/acidanthera/Lilu) (Required)
Un kext pour patcher de nombreux processus, requis pour AppleALC, WhichGreen, VirtualSMC et bien d'autres kexts. Sans Lilu, ils ne fonctionneront pas.

Notez que même si Lilu prend en charge Mac OS X 10.4, de nombreux plugins ne fonctionnent que sur les versions plus récentes.

<br />

### B. [VirtualSMC](https://github.com/acidanthera/VirtualSMC) (Required)
Émule la puce SMC trouvée sur les vrais Mac, sans cela macOS ne démarrera pas Nécessite Mac OS X 10.4 ou version ultérieure.

<br />

### C. [SMCAMDProcessor](https://github.com/trulyspinach/SMCAMDProcessor) (Plugin VirtualSMC)
Utilisé pour surveiller la température du processeur sur les systèmes basés sur AMD Zen.

Nécessite **AMDRyzenCPUPowerManagement** (voir Kexts spécifiques au processeur AMD)

Nécessite macOS 10.13 ou une version plus récente.

**En cours de développement, potentiellement instable**

<br />

### D. [WhateverGreen](https://github.com/acidanthera/WhateverGreen/) (Graphics | Required)
Utilisé pour les correctifs graphiques, les correctifs DRM, les vérifications d'ID de carte, les correctifs de framebuffer, etc.; tous les GPU bénéficient de ce kext.

Note: Nécessite Mac OS X 10.6 ou plus récent

<br />

### E. [AppleALC](https://github.com/acidanthera/AppleALC/) (Audio | Required)
Utilisé pour le patch AppleHDA, permettant la prise en charge de la majorité des contrôleurs audio intégrés
AppleALCU.kext est une version simplifiée d'AppleALC qui ne prend en charge que l'audio numérique - mais vous pouvez toujours utiliser AppleALC.kext sur les systèmes uniquement audio numériques
Les systèmes AMD 15h/16h peuvent avoir des problèmes avec AppleALC et les systèmes Ryzen/Threadripper prennent rarement en charge les micros
Nécessite OS X 10.4 ou une version plus récente

<br />

### F. [AppleIGB](https://github.com/donatengit/AppleIGB) (Ethernet)
Requis pour les cartes réseau I211 exécutées sur macOS Monterey et versions ultérieures
Il peut y avoir des problèmes d'instabilité sur certaines cartes réseau, il est recommandé de rester sur Big Sur et d'utiliser SmallTree
Requis pour la plupart des cartes AMD exécutant des cartes réseau Intel
Nécessite macOS 12 et versions ultérieures
<br />

### G. [NVMeFix](https://github.com/acidanthera/NVMeFix/releases)
Utilisé pour corriger la gestion de l'alimentation et l'initialisation sur les NVMe non Apple

### X. [XXXXXX](UUUUUUUUUUUUU)

<br />

### X. [XXXXXX](UUUUUUUUUUUUU)

<br />

### X. [XXXXXX](UUUUUUUUUUUUU)

<br />


### X. [XHCI-unsupported](https://github.com/RehabMan/OS-X-USB-Inject-All)
Nécessaire pour les contrôleurs USB non natifs

Les systèmes basés sur un processeur AMD n'en ont pas besoin.

<br />
<br />

### X. [XXXXXX](UUUUUUUUUUUUU)

<br />


### X. [XXXXXX](UUUUUUUUUUUUU)

<br />


### X. [XXXXXX](UUUUUUUUUUUUU)

<br />




```
AppleALC
AppleIGB
Lilu
SMCAMDProcessor
VirtualSMC
WhateverGreen



```
