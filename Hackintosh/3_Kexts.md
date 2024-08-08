--------------------------------------------------------------------------------------------------------------------------
## <p align='center'> Création d'une Clé d'installation HackinTosh (Partie 4) </p>

--------------------------------------------------------------------------------------------------------------------------
## I. Présentation
### A. Qu'est ce qu'un Kexts ?
Un Kexts est un pilote pour le matériel ou une fonction permettant de faire fonctionner le système.


<br />

--------------------------------------------------------------------------------------------------------------------------
## II. Pilotes (Bios)
### A. OpenRuntime (Requis)
> Extension pour OpenCore pour aider à patcher boot.efi pour des corrections NVRAM et une meilleure gestion de la mémoire.

### C. HfsPlus (Requis)
> Nécessaire pour visualiser les volumes HFS (c'est-à-dire les installateurs macOS et les partitions/images de récupération).

<br />

--------------------------------------------------------------------------------------------------------------------------
## III. Pilotes (Matériel)
Pour avoir la log des événements au démarrage, on privilégera la version DEBUG.

### A. Lilu (Requis)
> Un kext pour patcher de nombreux processus, nécessaire pour AppleALC, WhateverGreen, VirtualSMC et de nombreux autres kexts.
>
> Sans Lilu, ils ne fonctionneront pas.
```
https://github.com/acidanthera/Lilu/releases
```

<br />

### B. VirtualSMC (Requis)
> Emule la puce SMC que l'on trouve que sur les vrais macs, sans laquelle macOS ne démarre pas.
```
https://github.com/acidanthera/VirtualSMC/releases
```

<br />

### C. SMCAMDProcessor (Requis)
> Utilisé pour surveiller la température du processeur sur les systèmes AMD Zen. (Requiert AMDRyzenCPUPowerManagement)
>
```
https://github.com/trulyspinach/SMCAMDProcessor/releases
```

### D. RadeonSensor
> Utilisé pour surveiller la température du GPU sur les systèmes GPU AMD. (Nécessite RadeonSensor du même dépôt)
>
> Note: This repository has been archived by the owner on Jun 24, 2023. It is now read-only.
```
https://github.com/aluveitie/RadeonSensor
```


<br />
<br />
<br />

--------------------------------------------------------------------------------------------------------------------------
## IV. Sources
```
https://dortania.github.io/OpenCore-Install-Guide/ktext.html#firmware-drivers
```
