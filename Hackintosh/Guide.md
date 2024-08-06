-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
## <p align='center'> Installation de Mac OS sur PC </p>

-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
## I. Information de base
### A. Matériel ([Doc]())
```
- Carte-mère : Asus Prime X570 (https://www.asus.com/fr/motherboards-components/motherboards/prime/prime-x570-pro/techspec)
- Processeurs: Ryzen 7 3700x
```

### B. Chipset X570
```
- Audio    : Realtek® S1220A
- Ethernet : Intel® I211-AT
```

### C. Configuration du bios
```
- TPM : TPM Firmware
- Démarrage par défaut: PCIe
- Désactiver le démarrage via l'iGPU dans le bios.
- Activer la virtualisation
```

<br />

-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
## II. Pilotes de MacOS (Kexts)
### A. OpenCore
#### 1. Base
Le guide des Kext d'[Opencore](https://dortania.github.io/OpenCore-Install-Guide/ktext.html#kexts) contient la liste des Kexts utiles.

#### 2. Liste
La liste suivante n'est pas vérifié et fonctionnelle.
```
Lilu
VirtualSMC
AppleALC
AppleIGB
SMCAMDProcessor
WhateverGreen
NVMeFix
XHCI-unsupported
```


### B. Indispensables
#### 1. [Lilu](https://github.com/acidanthera/Lilu)
> Un kext pour patcher de nombreux processus, requis pour AppleALC, WhichGreen, VirtualSMC et bien d'autres kexts. Sans Lilu, ils ne fonctionneront pas.
>
> Notez que même si Lilu prend en charge Mac OS X 10.4, de nombreux plugins ne fonctionnent que sur les versions plus récentes.


#### 2. [VirtualSMC](https://github.com/acidanthera/VirtualSMC)
> Émule la puce SMC trouvée sur les vrais Mac, sans cela macOS ne démarrera pas Nécessite Mac OS X 10.4 ou version ultérieure.

<br />

### C. Audio
#### 1. [AppleALC](https://github.com/acidanthera/AppleALC/)
> Utilisé pour le patch AppleHDA, permettant la prise en charge de la majorité des contrôleurs audio intégrés.
> 
> AppleALCU.kext est une version simplifiée d'AppleALC qui ne prend en charge que l'audio numérique - mais vous pouvez toujours utiliser AppleALC.kext sur les systèmes uniquement audio numériques.

> Les systèmes AMD 15h/16h peuvent avoir des problèmes avec AppleALC et les systèmes Ryzen/Threadripper prennent rarement en charge les micros
> Nécessite OS X 10.4 ou une version plus récente

<br />

### D. Ethernet
#### 1. [AppleIGB](https://github.com/donatengit/AppleIGB) (Ethernet)
> Requis pour les cartes réseau I211 exécutées sur macOS Monterey et versions ultérieures.
> Il peut y avoir des problèmes d'instabilité sur certaines cartes réseau, il est recommandé de rester sur Big Sur et d'utiliser SmallTree.
> Requis pour la plupart des cartes AMD exécutant des cartes réseau Intel.
> Nécessite macOS 12 et versions ultérieures

<br />

### E. Graphics
#### 1. [SMCAMDProcessor](https://github.com/trulyspinach/SMCAMDProcessor) (Plugin VirtualSMC)
**En cours de développement, potentiellement instable**

> Utilisé pour surveiller la température du processeur sur les systèmes basés sur AMD Zen.
> Nécessite AMDRyzenCPUPowerManagement (voir Kexts spécifiques au processeur AMD)
> Nécessite macOS 10.13 ou une version plus récente.

#### 2. [WhateverGreen](https://github.com/acidanthera/WhateverGreen/)
> Utilisé pour les correctifs graphiques, les correctifs DRM, les vérifications d'ID de carte, les correctifs de framebuffer, etc.; tous les GPU bénéficient de ce kext.

<br />

### F. NVME
#### 1. [NVMeFix](https://github.com/acidanthera/NVMeFix/releases)
> Utilisé pour corriger la gestion de l'alimentation et l'initialisation sur les NVMe non Apple
> Note: Nécessite Mac OS X 10.6 ou plus récent

<br />

### G. USB
#### 1. [XHCI-unsupported](https://github.com/RehabMan/OS-X-USB-Inject-All)
> Nécessaire pour les contrôleurs USB non natifs
> Les systèmes basés sur un processeur AMD n'en ont pas besoin.

<br />
<br />

-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
# III. Génération de la Table ACPI
## A. Présentation
> AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA

<br />

## B. Téléchargement de l'outil [SDDTTIME](https://github.com/corpnewt/SSDTTime/archive/refs/heads/master.zip)
> Le logiciel permet d'extraire les tables ACPI qui permet au système d'exploitation d'interargir avec la machine. (Vieille, reprise ....)
> Lancer le fichier SSDTTime.bat

Lancer le fichier `SSDTTime.bat`.

![image](https://github.com/user-attachments/assets/79a60e7e-724e-4b39-a429-b631f2fb3195)









<br />
<br />

-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
# IV. OpenCore (Base)
## A. Télécharger OpenCorePKG


<br />

-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
# V. XXXXXXXXXXXXXXXXXXXXXXX

<br />

-----------------------------------------------------------------------------------------------------------------------------------------
# VI. XXXXXXXXXXXXXXXXXXXXXXX

<br />
