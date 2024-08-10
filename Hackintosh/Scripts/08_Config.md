--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
# <p align='center'> [Modification de la configuration MacOS](https://dortania.github.io/OpenCore-Install-Guide/AMD/zen.html#starting-point) </p>

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

### A. ACPI
#### 1. ADD
<p align='center'> <img width="855" height="350" src=https://github.com/user-attachments/assets/a370413f-cb33-4d4b-894e-43f5527eb11a /> </p>

<br />

### B. Booter

#### 1. Quirks
La clé `SetupVirtualMap` doit etre mis sur `false` car je possède une Carte-mère X470.

<p align='center'> <img width="855" height="350" src=https://github.com/user-attachments/assets/4ca52423-7432-478b-84cd-0398e7277a2d /> </p>


<br />

### C. DeviceProperties


<br />


### D. Kernel

<br />

### E. Msic
#### 1. Boot

#### 2. Debug

#### 3. Security
Pour permettre le démarrage, il est nécessaire de configurer le paramètre `SecureBootModel` et`Vault`.

<p align='center'> <img width="855" height="350" src=https://github.com/user-attachments/assets/544bab40-c42c-4ee6-9878-cb91d7acd290 /> </p>

<br />


### F. NVRAM



### G. PlatformInfo



### I. UEFI
