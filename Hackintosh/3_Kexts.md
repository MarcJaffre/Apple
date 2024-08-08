--------------------------------------------------------------------------------------------------------------------------
## <p align='center'> Création d'une Clé d'installation HackinTosh (Partie 4) </p>

--------------------------------------------------------------------------------------------------------------------------
## I. Présentation
### A. Qu'est ce qu'un Kexts ?
Un Kexts est un pilote pour le matériel ou une fonction permettant de faire fonctionner le système.

Il existe deux versions : Debug (Bavard en log) et Release 

### B. Sources
```
https://dortania.github.io/OpenCore-Install-Guide/ktext.html#firmware-drivers
```


### C. Installation des pilotes
#### 1. Drivers
> Le fichier EFI doivent être déposer dans le répertoire Drivers d'OpenCorePKG.

#### 2. Kexts
> Les dossiers se terminant en `.kexts` doit être dépose dans le répertoire `Kexts`.
>
> Un kexts peut contenir un dossier `content`, `Tools`.

<br />

--------------------------------------------------------------------------------------------------------------------------
## II. Pilote (Bios)
### A. OpenRuntime (Requis)
> Extension pour OpenCore pour aider à patcher boot.efi pour des corrections NVRAM et une meilleure gestion de la mémoire.

### C. HfsPlus (Requis)
> Nécessaire pour visualiser les volumes HFS (c'est-à-dire les installateurs macOS et les partitions/images de récupération).

<br />

--------------------------------------------------------------------------------------------------------------------------
## III. Pilote (matériel)
### A. Lilu (Requis)
> Un kext pour patcher de nombreux processus, nécessaire pour AppleALC, WhateverGreen, VirtualSMC et de nombreux autres kexts.
>
> Sans Lilu, ils ne fonctionneront pas.
```
https://github.com/acidanthera/Lilu/releases
```

<br />

### C. VirtualSMC (Requis)
> Emule la puce SMC que l'on trouve que sur les vrais macs, sans laquelle macOS ne démarre pas. (Supporté à partir de MacOS 10.4 ou plus récent)
>
> Extraire le dossier Tools dans Kexts !!!
```
https://github.com/acidanthera/VirtualSMC/releases
```



<br />





