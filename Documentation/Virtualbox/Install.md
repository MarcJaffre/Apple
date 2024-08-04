---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
## <p align='center'> Installation de Mac OS X dans Virtualbox </p>

---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
### I. Télécharger les images ISO



---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
### II. Création et configuration de la Machine Virtuelle

#### A. Mac OS X 10.15 (Catalina)
##### 1. Virtualbox
```
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


##### 2. Bypass

```bash
clear;
VM_NAME="Catalina"
VBoxManage modifyvm 	  "$VM_NAME" --cpuidset 00000001 000106e5 00100800 0098e3fd bfebfbff
VBoxManage modifyvm 	  "$VM_NAME" --cpu-profile "Intel Core i7-6700K"
VBoxManage setextradata "$VM_NAME"  "VBoxInternal/Devices/efi/0/Config/DmiSystemProduct" "iMac11,3"
VBoxManage setextradata "$VM_NAME"  "VBoxInternal/Devices/efi/0/Config/DmiSystemVersion" "1.0"
VBoxManage setextradata "$VM_NAME"  "VBoxInternal/Devices/efi/0/Config/DmiBoardProduct" "Iloveapple"
VBoxManage setextradata "$VM_NAME"  "VBoxInternal/Devices/smc/0/Config/DeviceKey" "ourhardworkbythesewordsguardedpleasedontsteal(c)AppleComputerInc"
VBoxManage setextradata "$VM_NAME"  "VBoxInternal/Devices/smc/0/Config/GetKeyFromRealSMC" 0
``` 
