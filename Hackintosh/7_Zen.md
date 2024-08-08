--------------------------------------------------------------------------------------------------------------------------
## <p align='center'> [Création d'une Clé d'installation HackinTosh (Partie 8)](https://dortania.github.io/OpenCore-Install-Guide/AMD/zen.html#starting-point) </p>

--------------------------------------------------------------------------------------------------------------------------
## I. Information
### A. Présentation
La configuration suivante est pour les ordinateurs ayant un processeur `AMD`.

### B. Patch AMD Vanilla
Pour permettre le démarrage, un patch nommer `AMD_Vanilla` doit être appliquer.

<br />

--------------------------------------------------------------------------------------------------------------------------
## II. Propertree
### A. Ouvrir par défaut les `.plist`
Ouvrir un fichier `.plist` et ouvrir avec le programme `ProperTree.bat`.

### B. Actualiser la configuration
Cette opération supprime toutes les entrées du fichier config.plist et ajoute tous les SSDT, Kexts et pilotes de microprogrammes à la configuration. (Laissera les entrées désactivées si elles étaient configurées ainsi auparavant)

> File
>
> Clean Snapshot
>
> Sélectionner un dossier (....\EFI\OC)

### C. Rétablir l'affichage
Depuis l'emplacement `Root`, faire Clique droit puis `Collapse Children`.

![image](https://github.com/user-attachments/assets/056028c4-34bf-469f-9a44-204dac8307ad)


### D. Zen
![image](https://github.com/user-attachments/assets/8445b719-cf31-4fbc-8f13-0608faa8a139)

<nt />
--------------------------------------------------------------------------------------------------------------------------
## II. Edition de la configuration MacOS
### A. [ACPI](https://dortania.github.io/OpenCore-Install-Guide/AMD/zen.html#acpi)

### B. Booter
### C. 
### D.
Kernel
Misc
NVRAM
PlatformInfo

<br />

--------------------------------------------------------------------------------------------------------------------------
## III. Patch AMD Vanilla

### A. 
