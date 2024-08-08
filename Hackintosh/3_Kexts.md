------------------------------------------------------------------------------------------------------------------------------
## <p align='center'> Création d'une Clé d'installation HackinTosh (Partie 4) </p>

------------------------------------------------------------------------------------------------------------------------------
## I. Présentation
### A. Qu'est ce qu'un Kexts ?
Un Kexts est un pilote pour le matériel ou une fonction permettant de faire fonctionner le système.

### B. Sources
```
https://dortania.github.io/OpenCore-Install-Guide/ktext.html#firmware-drivers
```

<br />

------------------------------------------------------------------------------------------------------------------------------
## II. Pilote (Bios)
### A. Drivers
Le fichier EFI doivent être déposer dans le répertoire Drivers d'OpenCorePKG.

#### 1. OpenRuntime (Requis)
> Extension pour OpenCore pour aider à patcher boot.efi pour des corrections NVRAM et une meilleure gestion de la mémoire.

#### 2. HfsPlus (Requis)
> Nécessaire pour visualiser les volumes HFS (c'est-à-dire les installateurs macOS et les partitions/images de récupération).

<br />

------------------------------------------------------------------------------------------------------------------------------
## III. Pilote (matériel)
### A. Kexts
> Les dossiers se terminant en `.kexts` doit être dépose dans le répertoire `Kexts`.
>
> Un kexts peut contenir un dossier `content`, `Tools`.



