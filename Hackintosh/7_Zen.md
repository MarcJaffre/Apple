--------------------------------------------------------------------------------------------------------------------------
## <p align='center'> [Création d'une Clé d'installation HackinTosh (Partie 8)](https://dortania.github.io/OpenCore-Install-Guide/AMD/zen.html#starting-point) </p>

--------------------------------------------------------------------------------------------------------------------------
## I. Information
### A. Présentation
La configuration suivante est pour les ordinateurs ayant un processeur `AMD`.

### B. Patch AMD Vanilla
Pour permettre le démarrage, un patch nommer `AMD_Vanilla` doit être appliquer.

<br />

--------------------------------------------------------------------------------------------------------------------------
## II. Edition de la configuration MacOS
### A. [ACPI](https://dortania.github.io/OpenCore-Install-Guide/AMD/zen.html#acpi)
#### 1. ADD
![image](https://github.com/user-attachments/assets/167e889d-9cc8-47a2-acc9-d352961df4ad)

### B. Booter
#### 1. Quirks
La valeur `ResizeAppleGpuBars` a été mise sur `0` car l'option `Resizable BAR Support` dans le bios a été activé. 

| Paramètres              | Valeur     | Commentaire                                               |
| ----------------------- | ---------- | --------------------------------------------------------- |
| DevirtualiseMmio	      | False      |                                                           |
| EnableWriteUnprotector  | False      |                                                           |
| RebuildAppleMemoryMap   | True       |                                                           |
| ResizeAppleGpuBars      | **0**      | L'option Resizable BAR Support dans le bios est activée.  |
| SetupVirtualMap         | **FALSE**  | Option mis sur False car [carte-mère X570](https://dortania.github.io/OpenCore-Install-Guide/AMD/zen.html#quirks-2) |
| SyncRuntimePermissions  | True       |                                                           |

![image](https://github.com/user-attachments/assets/3197e479-2e2f-459b-9f56-44bad271f523)

### C. [DeviceProperties](https://dortania.github.io/OpenCore-Install-Guide/AMD/zen.html#deviceproperties)
Supprimer l'entrée `PciRoot(0x0)/Pci(0x1b,0x0)` .

![image](https://github.com/user-attachments/assets/18d2f753-0268-456d-bb99-02f438ed2e76)




### D.
### E.
### F.
### G.
#### 1.
#### 2. 
#### 3.
#### 4.

Kernel
Misc
NVRAM
PlatformInfo

<br />

--------------------------------------------------------------------------------------------------------------------------
## III. Patch AMD Vanilla

### A. 






```
https://dortania.github.io/Getting-Started-With-ACPI/ssdt-methods/ssdt-prebuilt.html#amd-zen
```
