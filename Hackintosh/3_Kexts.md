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

<br />

### D. RadeonSensor (Optionnel)
> Utilisé pour surveiller la température du GPU sur les systèmes GPU AMD. (Nécessite RadeonSensor du même dépôt)
>
> Note: This repository has been archived by the owner on Jun 24, 2023. It is now read-only.
```
https://github.com/aluveitie/RadeonSensor
```

<br />

### E. WhateverGreen (Requis)
> Utilisé pour les correctifs graphiques, les corrections de DRM, les vérifications d'ID de carte, les corrections de framebuffer, etc ; tous les GPU bénéficient de ce kext.
```
https://github.com/acidanthera/WhateverGreen/releases
```

<br />

### F. AppleALC (Requis)
>  Utilisé pour le patching AppleHDA, permettant la prise en charge de la majorité des contrôleurs de son embarqués.

```
https://github.com/acidanthera/AppleALC/releases
```

<br />

### G. AppleIGB (Requis)
> Nécessaire pour les cartes réseau I211 fonctionnant sous macOS Monterey (11.2) et supérieur.
```
https://github.com/donatengit/AppleIGB/releases
```

<br />

### H .
>
```
```


















<br />
<br />
<br />

--------------------------------------------------------------------------------------------------------------------------
## IV. Sources
```
https://dortania.github.io/OpenCore-Install-Guide/ktext.html#firmware-drivers
```
