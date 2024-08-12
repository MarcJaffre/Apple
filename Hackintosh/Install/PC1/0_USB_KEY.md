-----------------------------------------------------------------------------------------------------------------------------
## <p align='center'> Installation de Mac OS sur le PC 1 </p>

-----------------------------------------------------------------------------------------------------------------------------
### I. Présentation
#### A. Matériel
```
- Carte-mère      : ASUS Prime X570
- Processeur      : AMD Ryzen 7 3700x (8 Cores / 16 Threads / 32Mo cache)
- Carte-Graphique : AMD RX 6700 XT (12 Go)
- Stockage        : NVME
```
#### B. Chipset
```
```

#### C. Operating System
Le système d'exploitation sera MacOS Sonoma.

<br />

-----------------------------------------------------------------------------------------------------------------------------### II. Préparation de l'environnement
#### A. Outils
```
- GenSMBIOS 
- ProperTree
- OpenCore
- SSDTTime
```

#### B. ACPI
```
- SSDT-EC-USBX-Desktop.aml
```

#### C. Drivers
```
- HFSPlus
```

#### D. Kexts
```
- AppleMCEReporterDisabler : (Support: MacPro6,1, MacPro7,1, iMacPro1,1)
```

### E. Patch AMD
Le patch [AMD-OSX](https://github.com/AMD-OSX/AMD_Vanilla) permet la prise en charge des Processeur(s) AMD.

