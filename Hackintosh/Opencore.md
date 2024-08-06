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

### D. 

### E. 



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
Télécharger le programme [SDDTTIME](https://github.com/corpnewt/SSDTTime/archive/refs/heads/master.zip) pour permettre de créer la table ACPI. (Interaction MAC / Carte-mère)






