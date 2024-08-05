--------------------------------------------------------------------------------------------------------------
# <p align='center'> Installation de Catalina dans Virtualbox </p>

<p align='center'> 
  <img src=https://github.com/user-attachments/assets/1f4cc2e5-b3d0-49b4-b902-572a0e800360 /> 
</p>

--------------------------------------------------------------------------------------------------------------
## I. Création et configuration de la Machine Virtuelle
### A. Mac OS X 
L'image utilisé est [Sonoma 14.iso](https://archive.org/details/macOS-X-images) et l'hyperviseur utilisé est virtualbox 7. (Ressources en bas)

#### 1. Virtualbox
```
[Creation de la VM]
- Nom                 : MacOS Catalina (14.0)
- Type                : Mac OS X
- Version             : Mac OS X (64 bit)
- Stockage            : XX Go
- Lecteur CD-ROM      : Sonoma 14.iso
 
[Système]
- Mémoire-vive        : 8192 MB
- Ordre d'amoçage     : Optique
-> Fonctions avancées : IO-APIC, Clock in UTC Time, EFI

Processeur(s)         : 8 Cores / 16 Threads
-> Fonctions avancées : PAE/NX

[Affichage]
- Mémoire Vidéo       : 128 MB
- Contrôleur Graph.   : VBox VGA
-> Fonctions avancées : Activer l'accélération 3D (A VOIR ???)

[USB]
- Activer le controleur USB : OUI
-> Contrôleur 3.0 (xHCI)
```

<br />
