--------------------------------------------------------------------------------------------------------------------------
## <p align='center'> [Création d'une Clé d'installation HackinTosh (Partie 8)](https://dortania.github.io/OpenCore-Install-Guide/AMD/zen.html#starting-point) </p>

--------------------------------------------------------------------------------------------------------------------------

# NON FONCTIONNELLE !!!

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

<img width="890" height="199" src=https://github.com/user-attachments/assets/167e889d-9cc8-47a2-acc9-d352961df4ad />

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


<img width="890" height="330" src=https://github.com/user-attachments/assets/3197e479-2e2f-459b-9f56-44bad271f523 />

<br />

### C. [DeviceProperties](https://dortania.github.io/OpenCore-Install-Guide/AMD/zen.html#deviceproperties)
#### 1. ADD
Supprimer l'entrée `PciRoot(0x0)/Pci(0x1b,0x0)` .

<img src=https://github.com/user-attachments/assets/18d2f753-0268-456d-bb99-02f438ed2e76 />

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
> Voir III. Patch AMD Vanilla

<br />

#### 4. Quirks
| Paramètres               | Valeur  | Commentaire                     |
| ------------------------ | ------- | ------------------------------- |
| PanicNoKextDump	         | True    |                                 |
| PowerTimeoutKernelPanic  | True    |                                 |
| ProvideCurrentCpuInfo    | True    |                                 |
| XhciPortLimit            | True    | Disable if running macOS 11.3+  |

<br />

![image](https://github.com/user-attachments/assets/729ef4ec-8327-4694-97f5-540049b822ad)


<br />

### E. Misc
#### 1. Boot
| Paramètres     | Valeur  | Commentaire                     |
| -------------- | ------- | ------------------------------- |
| HideAuxiliary  | True    |                                 |

#### 2. Debug
Permer l'activation des différents Debug

| Paramètres       | Valeur    | Commentaire                     |
| ---------------- | --------- | ------------------------------- |
| AppleDebug     	 | True      |                                 |
| ApplePanic       | True      |                                 |
| DisableWatchDog  | **True**  | A voir si c'est problèmatique   |
| SysReport        | False     | SI besoin de verbose, activer   |
| Target           | 67        |                                 |

![image](https://github.com/user-attachments/assets/63205542-5975-4c36-a229-d8d98a0aefe0)

<br />

#### 3. Security
| Paramètres           | Valeur    |
| -------------------- | --------- |
| AllowSetDefault	     | True      |
| BlacklistAppleUpdate | True      |
| ScanPolicy           | 0         |
| SecureBootModel      | Default   |
| Vault                | Optional  |

![image](https://github.com/user-attachments/assets/b2d16bea-8642-48e5-a7e2-5afa2f29998d)

<br />

### F. NVRAM
#### 1. add 
| Paramètres              | Type   | Valeur                                            |
| ----------------------- | ------ | ------------------------------------------------- |
| boot-args       	      |        | -v keepsyms=1 debug=0x100	agdpmod=pikera         |
| prev-lang:kbd	          | STRING | fr:1                                              |



 » à la variable «


### G. UEFI
#### 1. OpenRuntime.efi
#### 2. HfsPlus.efi 
#### 3. OpenCanopy.efi


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
| Ordre | Version supporté | Variable | Valeur (Defaut) | 8 Core(s)          |
| ----- | ---------------- | -------- |---------------- | ------------------ |
| 0     | 10.13 - 10.14    | Replace  | B8000000 0000   | B80**8**0000 0000  |
| 1     | 10.15 - 11.0     | Replace  | BA000000 0000   | BA0**8**0000 0000  | 
| 2     | 12.0  - 13.2     | Replace  | BA000000 0090   | BA0**8**0000 0090  |
| 3     | 13.3 +	         | Replace  | BA000000 00     | BA0**8**0000 00    |

<br />

<img width="890" height="259" src=https://github.com/user-attachments/assets/43dadd80-d253-422f-a31c-d68425e6f568 />

<br />

<img width="890" height="259" src=https://github.com/user-attachments/assets/4d22a16b-c200-40a2-abd6-adc0e64b5e1c />

<br />

<img width="890" height="259" src=https://github.com/user-attachments/assets/9e6d4b0d-0769-4b0f-aeaa-d69cc18f0bf7 />

<br />


<img width="890" height="259" src=https://github.com/user-attachments/assets/6a558c34-a049-4d68-aa9c-b0493f468c6f />

### C. config.plist
Supprimer l'objet `Patch` dans `Kernel`.

<img width="890" height="380" src=https://github.com/user-attachments/assets/42759e1d-2a32-4933-af6b-f5684d5b21e8 />

<br />

<img width="890" height="380" src=https://github.com/user-attachments/assets/c5294283-1546-4e64-a617-1fc340ab6576 />


<br />

### D. Copier le patch
Ouvrir le fichier `patch.plist` puis copier l'objet `Patch`.

<img width="890" height="380" src=https://github.com/user-attachments/assets/b2217b2e-ab1c-4f72-8091-a30571517e64 />

<br />

### E. Coller le Patch
Ouvrir le fichier `config.plist` puis coller dans l'objet `Kernel`.

<img width="890" height="380" src=https://github.com/user-attachments/assets/dad2ef26-3d90-4d73-bf46-e9fe20bbb88b />

<br />

<img width="890" height="380" src=https://github.com/user-attachments/assets/1c0f9693-8246-4c9a-bb1c-3230771f8ab2 />

<br />
<br />
<br />

### X. Note
```
https://dortania.github.io/Getting-Started-With-ACPI/ssdt-methods/ssdt-prebuilt.html#amd-zen
```
