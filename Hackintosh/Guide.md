-----------------------------------------------------------------------------------------------------------------------------------------
## <p align='center'> Installation de Mac OS sur PC </p>

-----------------------------------------------------------------------------------------------------------------------------------------
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

-----------------------------------------------------------------------------------------------------------------------------------------
## II. Pilotes de MacOS (Kexts)
### A. OpenCore
Le guide des Kext d'[Opencore](https://dortania.github.io/OpenCore-Install-Guide/ktext.html#kexts) contient la liste des Kexts utiles.

### B. [VirtualSMC](https://github.com/acidanthera/VirtualSMC) (Required)
Émule la puce SMC trouvée sur les vrais Mac, sans cela macOS ne démarrera pas Nécessite Mac OS X 10.4 ou version ultérieure.

#### 1. [SMCAMDProcessor](https://github.com/trulyspinach/SMCAMDProcessor) (Plugin VirtualSMC)
Utilisé pour surveiller la température du processeur sur les systèmes basés sur AMD Zen.

Nécessite **AMDRyzenCPUPowerManagement** (voir Kexts spécifiques au processeur AMD)

Nécessite macOS 10.13 ou une version plus récente.

**En cours de développement, potentiellement instable**

<br />



 [WhateverGreen](https://github.com/acidanthera/WhateverGreen/) (Graphics | Required)
Utilisé pour les correctifs graphiques, les correctifs DRM, les vérifications d'ID de carte, les correctifs de framebuffer, etc.; tous les GPU bénéficient de ce kext.

Note: Nécessite Mac OS X 10.6 ou plus récent





<br />

-----------------------------------------------------------------------------------------------------------------------------------------
# III. XXXXXXXXXXXXXXXXXXXXXXX

<br />

-----------------------------------------------------------------------------------------------------------------------------------------
# IV. XXXXXXXXXXXXXXXXXXXXXXX

<br />

-----------------------------------------------------------------------------------------------------------------------------------------
# V. XXXXXXXXXXXXXXXXXXXXXXX

<br />

-----------------------------------------------------------------------------------------------------------------------------------------
# VI. XXXXXXXXXXXXXXXXXXXXXXX

<br />
