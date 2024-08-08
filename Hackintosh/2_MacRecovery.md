-------------------------------------------------------------------------------------------------------------------
## <p align='center'> [Création d'une Clé d'installation HackinTosh (Partie 2)](https://dortania.github.io/OpenCore-Install-Guide/installer-guide/windows-install.html) </p>

-------------------------------------------------------------------------------------------------------------------
## I. MacRecovery
### A. Présentation
L'outil MacRecovery permet de télécharger l'image MacOS Recovery qui sera nécessaire lors de la création de la clé USB.

### B. Python3
Installer le logiciel Python 3.
```
https://www.python.org/ftp/python/3.11.5/python-3.11.5-amd64.exe
```

### C. Mac Recovery (Image)
L'utilitaire génère le dossier `com.apple.recovery.boot` qui contient l'image Recovery du MacOS.

#### 1. CMD
> Ouvrir l'invite de commande
>
> cd ...\OpenCore\Utilities\macrecovery


#### 3. Version MaCOS
> Lancer la commande pour lancer le téléchargement.


High Sierra: (10.13)
```
macrecovery.py -b Mac-7BA5B2D9E42DDD94 -m 00000000000J80300  download
macrecovery.py -b Mac-BE088AF8C5EB4FA2 -m 00000000000J80300  download
```

Mojave: (10.14)
```
macrecovery.py -b Mac-7BA5B2DFE22DDD8C -m 00000000000KXPG00  download
```

Catalina: (10.15)
```
macrecovery.py -b Mac-00BE6ED71E35EB86 -m 00000000000000000  download
```
Big Sur: (11)
```
macrecovery.py -b Mac-42FD25EABCABB274 -m 00000000000000000  download
```

Monterey: (12)
```
macrecovery.py -b Mac-FFE5EF870D7BA81A -m 00000000000000000  download
```

Ventura: (13)
```
macrecovery.py -b Mac-4B682C642B45593E -m 00000000000000000  download
```


#### 3. Déplacement du dossier
Déplacer le dossier `com.apple.recovery.boot` à côté du dossier `EFI`.

![image](https://github.com/user-attachments/assets/2e41adde-09de-44cb-ab7e-1ed9a92a4f67)


### D. Arborescence
```
# Tree /F
├───com.apple.recovery.boot
│       BaseSystem.chunklist
│       BaseSystem.dmg
│
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
