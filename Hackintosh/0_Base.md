------------------------------------------------------------------------------------------------------------------
## <p align='center'> Création d'une Clé d'installation HackinTosh (Partie 1) </p>

------------------------------------------------------------------------------------------------------------------
## I. Installation d'une clé Hackintosh
### A. Présentation
Pour réaliser un HackinTosh, il est nécessaire d'avoir des utilitaires pour permettre sa réalisation

------------------------------------------------------------------------------------------------------------------
## II. Utilitaires

![Explorateur_de_fichier](https://github.com/user-attachments/assets/5c77c983-94f6-46ba-867b-eb338c214cdd)

### A. GenSMBIOS
GenSMBIOS permet de simuler une référence matériel et de générer un numéro de série.
```
https://github.com/corpnewt/GenSMBIOS/archive/refs/heads/master.zip
```

<br />

### B. OpenCorePKG
#### 1. Téléchargement
> L'archive Debug permet lors de l'installation de voir les événements au démarrage.

```
https://github.com/acidanthera/OpenCorePkg/releases/download/1.0.1/OpenCore-1.0.1-DEBUG.zip
```

#### 2. Nettoyage
> Supprimer tout fichier qui est pas conforme au screenshoot.

Boot:

![Boot](https://github.com/user-attachments/assets/f85f177f-7df7-4bfc-b6c4-bb9de17e8012)

OC:

![OC](https://github.com/user-attachments/assets/7ad7edb5-98f2-4c10-acf0-678e2b59ee49)

Drivers:

![Drivers](https://github.com/user-attachments/assets/ff36b091-6ed5-4e95-9438-90029434cb1d)

Tools:

![Tools](https://github.com/user-attachments/assets/6d37d831-77cf-4792-a535-945276e38a3a)

<br />

### C. OCSysInfo
Permet de connaitre les informations matériels.
```
https://github.com/KernelWanderers/OCSysInfo/releases/download/v1.1.0/ocsysinfo_win_x86_64-RELEASE.exe
```

<br />

### D. ProperTree
ProperTree permet l'édition des fichiers `.plist`.
```
https://github.com/corpnewt/ProperTree/archive/refs/heads/master.zip
```

<br />

### E. Rufus
Rufus permettra de créer la clé USB.
```
https://github.com/pbatard/rufus/releases/download/v4.5/rufus-4.5.exe
```

<br />

### F. SSDTTime
SSDTTime propose de faire des correctifs pour MacOS.
```
https://github.com/corpnewt/SSDTTime/archive/refs/heads/master.zip
```

### G. Tree
La commande `tree /F` permet de vérifier.
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




