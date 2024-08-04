---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
## <p align='center'> Installation de Mac OS X dans Virtualbox </p>

---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
### I. Télécharger les images ISO
#### A. MyArchive
```
https://archive.org/details/macOS-X-images
https://archive.org/details/macos-collection
``` 

---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
### II. Création et configuration de la Machine Virtuelle

#### A. Mac OS X 10.15 (Catalina)
L'image utilisé est [Catalina 10.15.iso](https://archive.org/details/macOS-X-images) et la version de virtualbox est 7.X.

##### 1. Virtualbox

```
[Creation de la VM]
- Nom     : MacOSX 10.15
- Type    : Mac OS X
- Version : Mac OS X (64 bit)

[Système]
- Mémoire-vive        : 4096 MB
- Ordre d'amoçage     : Optique
-> Fonctions avancées : IO-APIC, Clock in UTC Time, EFI

Processeur(s)         : 8 Core
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
```bash
clear;
VM_NAME="MacOSX 10.15"
VBoxManage setextradata "$VM_NAME"   "VBoxInternal/Devices/efi/0/Config/DmiSystemProduct" "iMac11,3"
VBoxManage setextradata "$VM_NAME"   "VBoxInternal/Devices/efi/0/Config/DmiSystemVersion" "1.0"
VBoxManage setextradata "$VM_NAME"   "VBoxInternal/Devices/efi/0/Config/DmiBoardProduct" "Iloveapple"
VBoxManage setextradata "$VM_NAME"   "VBoxInternal/Devices/smc/0/Config/DeviceKey" "ourhardworkbythesewordsguardedpleasedontsteal(c)AppleComputerInc"
VBoxManage setextradata "$VM_NAME"   "VBoxInternal/Devices/smc/0/Config/GetKeyFromRealSMC" 0
VBoxManage modifyvm     "$VM_NAME"  --cpuidset 00000001 000106e5 00100800 0098e3fd bfebfbff
VBoxManage modifyvm     "$VM_NAME"  --cpu-profile "Intel Core i7-6700K"
```
