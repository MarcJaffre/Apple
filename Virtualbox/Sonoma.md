--------------------------------------------------------------------------------------------------------------
# <p align='center'> Installation de Sonoma dans Virtualbox </p>

--------------------------------------------------------------------------------------------------------------
## I. Création et configuration de la Machine Virtuelle
### A. Mac OS
L'image utilisé est [Sonoma 14.iso](https://archive.org/details/macOS-X-images) et l'hyperviseur utilisé est virtualbox 7. (Ressources en bas)
#### 1. Virtualbox
```
[Creation de la VM]
- Nom                 : MacOS Sonoma (14.0)
- Type                : Mac OS X
- Version             : Mac OS X (64 bit)
- Stockage            :
- Lecteur CD-ROM      : Sonoma 14.iso
 
[Système]
- Mémoire-vive        : 4096 MB
- Ordre d'amoçage     : Optique
-> Fonctions avancées : IO-APIC, Clock in UTC Time, EFI

Processeur(s)         : 4 Cores / 8 Threads
-> Fonctions avancées : PAE/NX

[Affichage]
- Mémoire Vidéo       : 128 Mo ==> 256 Mo
- Contrôleur Graph.   : VMSVGA
-> Fonctions avancées : Activer l'accélération 3D

[USB]
- Activer le controleur USB : OUI
-> Contrôleur 3.0 (xHCI)
```

<br />

### B. Bypass
```bash
clear;
VBoxManage modifyvm      "MacOS Sonoma (14.0)"
VBoxManage setextradata  "MacOS Sonoma (14.0)"
```
