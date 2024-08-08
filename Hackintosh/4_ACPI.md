--------------------------------------------------------------------------------------------------------------------------
## <p align='center'> [Création d'une Clé d'installation HackinTosh (Partie 4)](https://dortania.github.io/OpenCore-Install-Guide/ktext.html#desktop) </p>

--------------------------------------------------------------------------------------------------------------------------
## I. Présentation
### A. Kexts
La page [Kext](https://dortania.github.io/OpenCore-Install-Guide/ktext.html#desktop) pour un CPU AMD de 17/19h (Ryzen 7 3700x), il est nécessaire de faire [SSDT-EC-USB](https://dortania.github.io/Getting-Started-With-ACPI/Universal/ec-fix.html)

### B. SSDTTime
#### 1. Génération de l'ACPI ([Guide](https://dortania.github.io/Getting-Started-With-ACPI/ssdt-methods/ssdt-easy.html))
La génération de l'ACPI est dans le dossier `SSDTTime\Results`.

![image](https://github.com/user-attachments/assets/7b1503dc-9b06-46fe-b8ef-cbbf55212099)

<br />

#### 2. Génération du correctif [SSDT-EC](https://dortania.github.io/Getting-Started-With-ACPI/Universal/ec-methods/ssdttime.html)

![image](https://github.com/user-attachments/assets/7d189d10-e5d2-4895-8881-194b8017a191)

![image](https://github.com/user-attachments/assets/17b539d7-3130-4b97-9b6d-b0bb7e2c6beb)

![image](https://github.com/user-attachments/assets/d2f7997c-95bb-480e-855d-917c8a710e2e)

![image](https://github.com/user-attachments/assets/2eab20db-ed41-4ff6-8b6b-7dff73d22f20)


#### 2. Génération du correctif [USB-X
![image](https://github.com/user-attachments/assets/d4e3c8bf-5690-4eff-8d11-5f2f4d38852a)

![image](https://github.com/user-attachments/assets/432043a7-47aa-4226-83f6-69f521086b7d)

![image](https://github.com/user-attachments/assets/97a9c2a0-3e2e-4043-a4c8-5082a5c1ba4a)



#### 4. OpenCorePKG
> Les fichiers `aml` doivent être placé dans `ACPI`.

ACPI:

![image](https://github.com/user-attachments/assets/de1595c9-d10e-48bd-bda0-aa3b64626dff)


<br />

### E. Exemple ACPI
> Dans le dossier `OpenCore\Docs\AcpiSamples\Binaries`, il existe de nombreux binaire. 

![image](https://github.com/user-attachments/assets/b86ea2d6-dc8c-42d7-8b79-991c8fde890f)
