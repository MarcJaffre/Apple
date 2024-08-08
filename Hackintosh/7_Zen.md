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
## II. Edition de la configuration MacOS
### A. [ACPI](https://dortania.github.io/OpenCore-Install-Guide/AMD/zen.html#acpi)
#### 1. ADD
![image](https://github.com/user-attachments/assets/167e889d-9cc8-47a2-acc9-d352961df4ad)

<br />

### B. Booter
#### 1. Quirks
La valeur `ResizeAppleGpuBars` a été mise sur `0` car l'option `Resizable BAR Support` dans le bios a été activé. 

| Paramètres              | Valeur     | Commentaire                                               |
| ----------------------- | ---------- | --------------------------------------------------------- |
| DevirtualiseMmio	      | False      |                                                           |
| EnableWriteUnprotector  | False      |                                                           |
| RebuildAppleMemoryMap   | True       |                                                           |
| ResizeAppleGpuBars      | **0**      | L'option Resizable BAR Support dans le bios est activée.  |
| SetupVirtualMap         | **FALSE**  | Option mis sur False car [carte-mère X570](https://dortania.github.io/OpenCore-Install-Guide/AMD/zen.html#quirks-2) |
| SyncRuntimePermissions  | True       |                                                           |

![image](https://github.com/user-attachments/assets/3197e479-2e2f-459b-9f56-44bad271f523)

<br />

### C. [DeviceProperties](https://dortania.github.io/OpenCore-Install-Guide/AMD/zen.html#deviceproperties)
#### 1. ADD
Supprimer l'entrée `PciRoot(0x0)/Pci(0x1b,0x0)` .

![image](https://github.com/user-attachments/assets/18d2f753-0268-456d-bb99-02f438ed2e76)

<br />

### D. Kernel
#### 1. ADD
Par défaut, nous recommandons de laisser ce que ProperTree
> C'est ici que nous spécifions quels kexts charger, dans quel ordre spécifique, et pour quelles architectures chaque kext est destiné.

| Ordre de démarrage | BundlePath                           |
| ------------------ | ------------------------------------ |
| 0                  | Lilu.kext                            |
| 1                  | VirtualSMC.kext                      |
| 2                  | WhateverGreen.kext                   |
| 3                  | AppleALC.kext                        |
| 4                  | AppleMCEReporterDisabler.kext        |
| 5                  | AMDRyzenCPUPowerManagement.kext      |
| 6                  | AppleIGB.kext                        |
| 7                  | NVMeFix.kext                         |
| 8                  | SMCAMDProcessor.kext                 |
| 9                  | XXXXXXXXXX.kext                      |
| 10                 | XXXXXXXXXX.kext                      |
| 11                 | XXXXXXXXXX.kext                      |
| 12                 | XXXXXXXXXX.kext                      |
| 13                 | XXXXXXXXXX.kext                      |
| 14                 | XXXXXXXXXX.kext                      |
| 15                 | XXXXXXXXXX.kext                      |


#### 2. Emulate
| Paramètres              | Valeur  |
| ----------------------- | ------- |
| DummyPowerManagement    | true    |

![image](https://github.com/user-attachments/assets/ff4f7cab-defd-4521-aec7-68786e8e9a86)


#### 3. Patch (AMD Vanilla)
Voir Partie III


<br />

### E. Misc
### F.
### G.
#### 1. 
#### 2. 
#### 3. 
#### 4. 


<br />

--------------------------------------------------------------------------------------------------------------------------
## III. Patch AMD Vanilla

### A. Télécharger le patch
```
https://github.com/AMD-OSX/AMD_Vanilla/archive/refs/heads/master.zip
```

### B. Ouvrir le patch
Le fichier doit être ouvert avec `ProperTree`.

![image](https://github.com/user-attachments/assets/f3079e0a-b6aa-48a0-b9b4-ba5f8b69f54d)

### C. Définir le nombre de coeur


| Ordre | Version supporté | Variable | VALEUR Defaut  | 8 Core(s)          |
| ----- | ---------------- | -------- |--------------- | ------------------ |
| 0     | 10.13 - 10.14    | Replace  |
| 1     | 10.15 - 11       | Replace  |
| 2     | 12    - 13.2.1   | Replace  |
| 3     | 13.3 +	







```
https://dortania.github.io/Getting-Started-With-ACPI/ssdt-methods/ssdt-prebuilt.html#amd-zen
```
