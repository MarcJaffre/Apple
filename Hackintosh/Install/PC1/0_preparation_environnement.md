---------------------------------------------------------------------------------------------------------------------
## <p align='center'> Installation de Mac OS sur le PC 1 </p>

---------------------------------------------------------------------------------------------------------------------
### I. Présentation
#### A. Matériel
```
- Carte-mère      : ASUS Prime X570
- Processeur      : AMD Ryzen 7 3700x (8 Cores / 16 Threads / 32Mo cache)
- Carte-Graphique : AMD RX 6700 XT (12 Go)
- Stockage        : NVME
```
#### B. Chipset
```
```

#### C. Operating System
Le système d'exploitation sera MacOS Sonoma.

<br />
<br />

---------------------------------------------------------------------------------------------------------------------
### II. Téléchargement de l'environnement
#### A. Outils
Utiliser une version `DEBUG` pour voir les événements du système. (Debuggage)
```
- GenSMBIOS  : https://github.com/corpnewt/GenSMBIOS/
- ProperTree : https://github.com/corpnewt/ProperTree
- OpenCore   : https://github.com/acidanthera/OpenCorePkg/releases
- SSDTTime   : https://github.com/corpnewt/SSDTTime
```

<br />


#### B. Drivers
>Le système d'exploitation MacOS nécessite le pilote HFSPlus pour permettre la gestion des partitions HFS.
```
https://github.com/acidanthera/OcBinaryData/blob/master/Drivers/HfsPlus.efi
```

### C. Patch AMD
Le patch [AMD-OSX](https://github.com/AMD-OSX/AMD_Vanilla) permet la prise en charge des Processeur(s) AMD.
``` 
- Ouvrir les fîchiers .plist avec Propertree. (Config.plist et Patch.plist)
- Dans le fichier Config.plist supprimer Kernel > Patch
- Dans le fichier Patch.plist copier Kernel > Patch
- Dans le fichier Config.plist coller dans Kernel.
```

<br />

---------------------------------------------------------------------------------------------------------------------
### II. Configuration de base de l'environnement
