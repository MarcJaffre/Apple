### A. Création de la Machine Virtuelle
```
Ne pas activer l'accélération 3D
```



### B. Bypass
```bash
clear;
VBoxManage modifyvm      "MacOS Sonoma (14.0)"  --cpuidset 00000001 000106e5 00100800 0098e3fd bfebfbff
VBoxManage setextradata  "MacOS Sonoma (14.0)"  "VBoxInternal/Devices/efi/0/Config/DmiSystemProduct" "iMac11,3"
VBoxManage setextradata  "MacOS Sonoma (14.0)"  "VBoxInternal/Devices/efi/0/Config/DmiSystemVersion" "1.0"
VBoxManage setextradata  "MacOS Sonoma (14.0)"  "VBoxInternal/Devices/efi/0/Config/DmiBoardProduct" "Iloveapple"
VBoxManage setextradata  "MacOS Sonoma (14.0)"  "VBoxInternal/Devices/smc/0/Config/DeviceKey" "ourhardworkbythesewordsguardedpleasedontsteal(c)AppleComputerInc"
VBoxManage setextradata  "MacOS Sonoma (14.0)"  "VBoxInternal/Devices/smc/0/Config/GetKeyFromRealSMC" 0
VBoxManage modifyvm      "MacOS Sonoma (14.0)"  --cpu-profile "Intel Core i7-6700K"
```
