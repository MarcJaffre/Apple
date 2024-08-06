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
<br />

---------------------------------------------------------------------------------------------------------------
## II. Préparation de l'environnement
### A. OpenCore
```
https://github.com/acidanthera/OpenCorePkg/releases
```

### B. EFI
```
- Extraire le fichier (7Zip)
- Déplacer  : X64\EFI           ==> Bureau
- Copier    : Docs\Sample.plist ==> Bureau\EFI\config.plist
- Supprimer : Resources et le contennu de Tools (optionnel)
```

<br />
<br />

---------------------------------------------------------------------------------------------------------------
## III. ACPI
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
```
- Menu de sélection : D
- Copier le chemin  : ....\SSDTTime-master\SSDTTime-master\Results\ACPI
- Console           : "....\SSDTTime-master\SSDTTime-master\Results\ACPI"
- Information       : ....\SSDTTime-master\SSDTTime-master\Results\ACPI ne contient pas de fichier plist
```

![image](https://github.com/user-attachments/assets/3ad303f6-1d58-49b0-a3f6-bd2f0eb470ac)

![image](https://github.com/user-attachments/assets/c6553d63-b6a9-4401-bb27-374af8649fd8)

### C. FixHPET 

### X. FakeEC
### X. FakeEC Laptop
### X. USBX
### X. PluginType
### X. PMC
### X. RTCAWAC
### X. USB Reset
### X. PCI Bridge
### X. PNLF
### X. XOSI
### X. Fix DMAR
### X. 
### X. 
### X. 
### X. 
### X. 
### X. 
### X. 
