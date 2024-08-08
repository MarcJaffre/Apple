--------------------------------------------------------------------------------------------------------------------------
## <p align='center'> [Création d'une Clé d'installation HackinTosh (Partie 6)](https://dortania.github.io/OpenCore-Install-Guide/config.plist/) </p>

--------------------------------------------------------------------------------------------------------------------------
## I. Information
### A. Présentation
Le fichier de configuration contient les instructions servant au démarrage du système.

<br />

--------------------------------------------------------------------------------------------------------------------------
## II. ProperTree
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


![image](https://github.com/user-attachments/assets/8445b719-cf31-4fbc-8f13-0608faa8a139)
