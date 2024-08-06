--------------------------------------------------------------------------------------------------------------------------------------
# <p align='center'> [Création d'une Clé Bootable sous Windows de Mac OS](https://github.com/acidanthera/OpenCorePkg/releases)

--------------------------------------------------------------------------------------------------------------------------------------
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

--------------------------------------------------------------------------------------------------------------------------------------
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

### C. ACPI
#### 1. [SDDTTIME](https://github.com/corpnewt/SSDTTime/archive/refs/heads/master.zip)
Le logiciel permet d'extraire les tables ACPI qui permet au système d'exploitation d'interargir avec la machine. (Vieille, reprise ....)

#### 2. Dump DSDT
La création d'un `DUMP DSDT` permet d'extraire l'ACPI de la carte-mère. Le fichier se trouve dans lê répertoire `results`.

#### 3. Select DSDT or Origin folder
Ce menu permet de charger le fichier DSDT qu'on à crée précédemment.





