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

### C. Fichier ACPI
```
Source      : .\SSDTTime-master\Results\*.aml
Destination : .\X64\EFI\ACPI
```
<br />
<br />
