--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
# <p align='center'> [Modification de la configuration MacOS](https://dortania.github.io/OpenCore-Install-Guide/AMD/zen.html#starting-point) </p>

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

### A. ACPI
#### 1. ADD
<p align='center'> <img width="855" height="350" src=https://github.com/user-attachments/assets/a370413f-cb33-4d4b-894e-43f5527eb11a /> </p>

<br />

### B. Booter
#### 1. Quirks

| Clé                     | Valeur | Commentaires    |
| ----------------------- | ------ | --------------- |
| DevirtualiseMmio        | False  |                 |
| EnableWriteUnprotector  | False  |                 |
| RebuildAppleMemoryMap   | True   |                 |
| ResizeAppleGpuBars      | -1     |                 |
| SetupVirtualMap         | False  | Carte-mère [X570](https://dortania.github.io/OpenCore-Install-Guide/AMD/zen.html#booter) |                 |
| SyncRuntimePermissions  | True   |                 |

<br />

### C. DeviceProperties

### D. Kernel
#### 1. Emulate
| Clé                     | Valeur |
| ----------------------- | ------ |
| DummyPowerManagement    | True   |


#### 2. Patch
> Ouvrir le fichier patch.plist (AMD) et config.list.
>
> Supprimer la section "Patch" de config.list
>
> Copier la section "Patch" du fichier patch.plist
>
> Coller dans Kernel

#### 3. Quirks
| Clé                     | Valeur |
| ----------------------- | ------ |
| PanicNoKextDump         | True   |
| PowerTimeoutKernelPanic | True   |
| ProvideCurrentCpuInfo   | True   |
| XhciPortLimit           | False  |


<br />

### E. Msic
#### 1. Boot
| Clé                     | Valeur | Commentaires                                                   |
| ----------------------- | ------ | -------------------------------------------------------------- |
| HideAuxiliary           | True   | Press space to show macOS recovery and other auxiliary entries |

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
| boot-args       	      | -v debug=0x100 keepsyms=1 agdpmod=pikera		  |
| WriteFlash       	      |                                               |


### G. PlatformInfo



### I. UEFI
