---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
## <p align='center'> Installation de Mac OS X dans Virtualbox </p>

--------------------------------------------------------------------------------------------------------------
### I. Télécharger les images ISO
#### A. MyArchive
```
https://archive.org/details/macOS-X-images
https://archive.org/details/macos-collection
```

#### B. BootLoader
```
- Opencore
- https://github.com/CloverHackyColor/CloverBootloader
- https://osy.gitbook.io/hac-mini-guide/legacy-guide-clover/legacy-installing-osx
```
spctl kext-consent
#### C. Guide
```
- https://www.tech2tech.fr/comment-installer-macos-catalina-10-15-sur-virtualbox-sur-windows/
- https://forums.virtualbox.org/viewtopic.php?t=85631
- https://hackintosh.com/
- https://tonymacx86.com

- [OpenCore] https://www.youtube.com/watch?v=ETO4qhUPBfA
```

#### D. Support Hardware
```
https://support.apple.com/fr-fr/105113
```


<br />

--------------------------------------------------------------------------------------------------------------
### II. Création et configuration de la Machine Virtuelle
#### A. Mac OS X 10.15 (Catalina) - Experimental
L'image utilisé est [Catalina 10.15.iso](https://archive.org/details/macOS-X-images) et la version de virtualbox est 7.X.

##### 1. Virtualbox

```
[Creation de la VM]
- Nom     : MacOS X Catalina (10.15)
- Type    : Mac OS X
- Version : Mac OS X (64 bit)

[Système]
- Mémoire-vive        : 4096 MB
- Ordre d'amoçage     : Optique
-> Fonctions avancées : IO-APIC, Clock in UTC Time, EFI

Processeur(s)         : 4 Cores / 8 Thread
-> Fonctions avancées : PAE/NX

[Affichage]
- Mémoire Vidéo       : 128 MB
- Contrôleur Graph.   : VBox VGA
-> Fonctions avancées : Activer l'accélération 3D

[USB]
- Activer le controleur USB : OUI
-> Contrôleur 3.0 (xHCI)
```



##### 2. Bypass ([DOC](https://gist.github.com/notsidney/50a211527567962a5dc93b8a765fa6fc))
Script Linux:
```bash
clear;
VM_NAME="MacOS X Catalina (10.15)"

# Simuler une machine MAC
VBoxManage setextradata "$VM_NAME"  "VBoxInternal/Devices/efi/0/Config/DmiSystemProduct" "iMac11,3"
VBoxManage setextradata "$VM_NAME"  "VBoxInternal/Devices/efi/0/Config/DmiSystemVersion" "1.0"
VBoxManage setextradata "$VM_NAME"  "VBoxInternal/Devices/efi/0/Config/DmiBoardProduct" "Iloveapple"
VBoxManage setextradata "$VM_NAME"  "VBoxInternal/Devices/smc/0/Config/DeviceKey" "ourhardworkbythesewordsguardedpleasedontsteal(c)AppleComputerInc"
VBoxManage setextradata "$VM_NAME"  "VBoxInternal/Devices/smc/0/Config/GetKeyFromRealSMC" 0

# CPU (i7-6700K : 4 Cores / 8 Threads)
VBoxManage modifyvm     "$VM_NAME"  --cpu-profile "Intel Core i7-6700K"
VBoxManage modifyvm     "$VM_NAME"  --cpuidset 00000001 000106e5 00100800 0098e3fd bfebfbff

# Apple iMac 27" (Late 2015)
```

Script Windows:
```bash
@echo off

:: Nettoyage console
cls;

:: Definir Nom de la machine
set VM_NAME=MacOS X Catalina (10.15)

:: Dossier Virtualbox 
cd "C:\Program Files\Oracle\VirtualBox\"

:: Simuler une machine MAC
VBoxManage setextradata "%VM_NAME%"  "VBoxInternal/Devices/efi/0/Config/DmiSystemProduct" "iMac11,3"
VBoxManage setextradata "%VM_NAME%"  "VBoxInternal/Devices/efi/0/Config/DmiSystemVersion" "1.0"
VBoxManage setextradata "%VM_NAME%"  "VBoxInternal/Devices/efi/0/Config/DmiBoardProduct" "Iloveapple"
VBoxManage setextradata "%VM_NAME%"  "VBoxInternal/Devices/smc/0/Config/DeviceKey" "ourhardworkbythesewordsguardedpleasedontsteal(c)AppleComputerInc"
VBoxManage setextradata "%VM_NAME%"  "VBoxInternal/Devices/smc/0/Config/GetKeyFromRealSMC" 0

# CPU (i7-6700K : 4 Cores / 8 Threads)
VBoxManage modifyvm "%VM_NAME%" --cpu-profile "Intel Core i7-6700K"
VBoxManage modifyvm "%VM_NAME%" --cpuidset 00000001 000106e5 00100800 0098e3fd bfebfbff
```

##### 3. Information
Lors du démarrage de l'installation , ceci peut être très long. Pareil pour le 1er démarrage.

le caractère `@` lors du processus Post Install se fait gràce `alt+gr+*` . 

Ignorer le compte Icloud.

<br />

--------------------------------------------------------------------------------------------------------------
### III. Installation des Guest additions

#### A. [CATALINA](https://github.com/geerlingguy/macos-virtualbox-vm/issues/79)
##### 1. Autorisé les applications téléchargés de n'importe où
Ouvrir le terminal et taper la commande suivante
```
sudo spctl --master-disable
```

![image](https://github.com/user-attachments/assets/634fe82f-bdcc-4d75-8f74-9aae654e9cd3)
