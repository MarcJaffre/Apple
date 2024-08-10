--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
# <p align='center'> [Modification de la configuration MacOS](https://dortania.github.io/OpenCore-Install-Guide/AMD/zen.html#starting-point) </p>

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

### A. ACPI
#### 1. ADD
<p align='center'> <img width="855" height="350" src=https://github.com/user-attachments/assets/a370413f-cb33-4d4b-894e-43f5527eb11a /> </p>

<br />

### B. Booter
#### 1. Quirks
La Clé `SetupVirtualMap` peut être configuré en True ou False selon le besoin. 


| Clé                     | Valeur | Commentaires    |
| ----------------------- | ------ | --------------- |
| DevirtualiseMmio        | False  |                 |
| EnableWriteUnprotector  | False  |                 |
| RebuildAppleMemoryMap   | True   |                 |
| ResizeAppleGpuBars      | -1     |                 |
| SetupVirtualMap         | -----  | Carte-mère [X570](https://dortania.github.io/OpenCore-Install-Guide/AMD/zen.html#booter) |                 |
| SyncRuntimePermissions  | True   |                 |

<br />

### C. DeviceProperties

### D. Kernel
#### 1. ADD
```
1) LILU
2) VirtualSMC
3) SMCAMDProcessor 
4) AMDRyzenCPUPowerManagement
```


#### 2. Emulate
| Clé                     | Valeur |
| ----------------------- | ------ |
| DummyPowerManagement    | True   |




#### 3. Patch
> Ouvrir le fichier patch.plist (AMD) et config.list.
>
> Supprimer la section "Patch" de config.list
>
> Copier la section "Patch" du fichier patch.plist
>
> Coller dans Kernel
>
> Kernel > Patch > 21 > Enable (Voir GitHub du patch : Information on the fix PAT patch)


#### 3. Quirks
| Clé                     | Valeur |
| ----------------------- | ------ |
| PanicNoKextDump         | True   |
| PowerTimeoutKernelPanic | True   |
| ProvideCurrentCpuInfo   | True   |
| XhciPortLimit           | False  |


<br />

### E. Misc
#### 1. Boot
| Clé                     | Valeur | Commentaires                                                   |
| ----------------------- | ------ | -------------------------------------------------------------- |
| HideAuxiliary           | False  | Press space to show macOS recovery and other auxiliary entries |

#### 3. Debug
| Clé                     | Valeur |
| ----------------------- | ------ |
| AppleDebug              | True   |
| ApplePanic              | True   |
| DisableWatchDog         | True   |
| Target                  | 67     |


#### 4. Security

| Clé                     | Valeur   |
| ----------------------- | -------- |
| AllowSetDefault         | True     |
| BlacklistAppleUpdate    | True     |
| DmgLoading              | Signed   |
| ScanPolicy              | 0        |
| SecureBootModel         | Default  |
| Vault                   | Optional |

<br />


### F. NVRAM
#### 1. ADD 
| Clé                     | Valeur                                        |
| ----------------------- | --------------------------------------------- |
| boot-args       	      | -v keepsyms=1 debug=0x100 agdpmod=pikera		  |
| WriteFlash       	      |                                               |


### G. PlatformInfo

### I. UEFI


# <p align='center'> Réaliser une validation du fichîer car erreur !!!!! </p>
