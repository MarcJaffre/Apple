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
## II. Drivers
### A. Installation des fichiers
Le fichier EFI doivent être déposer dans le répertoire Drivers d'OpenCorePKG.

### B. OpenRuntime (Requis)
Extension pour OpenCore pour aider à patcher boot.efi pour des corrections NVRAM et une meilleure gestion de la mémoire.

### C. HfsPlus (Requis)
Nécessaire pour visualiser les volumes HFS (c'est-à-dire les installateurs macOS et les partitions/images de récupération).


