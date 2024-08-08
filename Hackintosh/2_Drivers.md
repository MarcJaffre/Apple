-------------------------------------------------------------------------------------------------------------------
## <p align='center'> Création d'une Clé d'installation HackinTosh (Partie 2) </p>

-------------------------------------------------------------------------------------------------------------------
## I. Installation de Drivers
### A. Présentation
Le dossier Drivers est utilisé pour le démarrage de MacOS uniquement

### B. HfsPlus
Déposer le fichier dans le répertoire `Drivers` de OpenCorePKG.

```
https://github.com/acidanthera/OcBinaryData/raw/master/Drivers/HfsPlus.efi
```

<br />

![HfsPlus](https://github.com/user-attachments/assets/dca7d216-71a2-4743-8294-63bd6a8943d2)

```
#
└───EFI
    ├───BOOT
    │       BOOTx64.efi
    │
    └───OC
        │   OpenCore.efi
        │
        ├───ACPI
        ├───Drivers
        │       HfsPlus.efi
        │       OpenCanopy.efi
        │       OpenRuntime.efi
        ├───Kexts
        ├───Resources
        │   ├───Audio
        │   ├───Font
        │   ├───Image
        │   └───Label
        └───Tools
                OpenShell.efi
```
