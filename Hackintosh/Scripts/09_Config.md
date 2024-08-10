--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
# <p align='center'> [Modification de la configuration MacOS](https://dortania.github.io/OpenCore-Install-Guide/AMD/zen.html#starting-point) </p>

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

### A. ACPI
#### 1. ADD
<p align='center'> <img width="855" height="350" src=https://github.com/user-attachments/assets/a370413f-cb33-4d4b-894e-43f5527eb11a /> </p>

<br />

### B. Booter
#### 1. Quirks
La Clé `SetupVirtualMap` peut être configuré en True ou False selon le besoin. [X570](https://dortania.github.io/OpenCore-Install-Guide/AMD/zen.html#booter)

| Clé                     | Valeur |
| ----------------------- | ------ |
| EnableWriteUnprotector  | False  |
| RebuildAppleMemoryMap   | True   |
| SyncRuntimePermissions  | True   |

<br />

### C. DeviceProperties
Supprimer le matériel .

<br />

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
Mettre la Target à 75 (CF. GitHub de OpenCore)

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
| ScanPolicy              | 0        |
| Vault                   | Optional |

<br />


### F. NVRAM
#### 1. ADD 
| Clé                     | Valeur                                 |
| ----------------------- | -------------------------------------- |
| boot-args       	      | -v keepsyms=1                          |

#### 2. Lilu
```
------------------------------------------------------------------------------------------------
-liludbg       : Enable debug printing.
-liludbgall    : Enable debug printing + Modules.
------------------------------------------------------------------------------------------------
-liluoff       : Disable Lilu.
-lilubeta      : Enable Lilu on unsupported OS versions.
-lilubetaall   : Enable Lilu and all loaded plugins on unsupported os versions.
------------------------------------------------------------------------------------------------
liludelay=5000 : Enable 5 second delay after each print for troubleshooting. (Pas de tirer !!!)
```

#### 2. VirtualSMC
```
-vsmcdbg      : Enable debug printing (available in DEBUG binaries).
-vsmcoff      : Switch off all the Lilu enhancements.
-vsmcbeta     : Enable Lilu enhancements on unsupported OS (14 and below are enabled by default).
-vsmcrpt      : Report about missing SMC keys to the system log.
-vsmccomp     : Prefer existing hardware SMC implementation if found.
------------------------------------------------------------------------------------------------
vsmcgen=X     : Force exposing X-gen SMC device (1 and 2 are supported).
vsmchbkp=X    : Set HBKP dumping mode (0 - off, 1 - normal, 2 - without encryption).
vsmcslvl=X    : Set value serialisation level (0 - off, 1 - normal, 2 - with sensitive data (default)).
smcdebug=0xff : Enable AppleSMC debug information printing.
watchdog=0    : Disable WatchDog timer (if you get accidental reboots).
```






### G. PlatformInfo
#### 1. Generic
| Clé                     | Valeur |
| ----------------------- | ------ |
| SpoofVendor      	      | true   |




### I. UEFI


# <p align='center'> Réaliser une validation du fichîer car erreur !!!!! </p>
