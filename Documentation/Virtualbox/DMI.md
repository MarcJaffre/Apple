


--------------------------------------------------------------------------------------------------------------------------------------------------------------------
## <p align='center'> Paramètres de Virtualbox en ligne de commande </p>

--------------------------------------------------------------------------------------------------------------------------------------------------------------------
## I. Sources
```
- [Documentation] https://docs.oracle.com/en/virtualization/virtualbox/6.0/admin/changedmi.html
- [HideVM]        https://github.com/firefedot/virtualbox-vm0-vm/blob/master/hidevm_efiide.cmd
```

<br />

--------------------------------------------------------------------------------------------------------------------------------------------------------------------
## II. DMI
### A. Bios Information (Type 0)
```bash
# Vendor
VBoxManage setextradata "MacOS Catalina (10.15)" "VBoxInternal/Devices/efi/0/Config/DmiBIOSVendor"         "Apple Inc."

# Version
VBoxManage setextradata "MacOS Catalina (10.15)" "VBoxInternal/Devices/efi/0/Config/DmiBIOSVersion"        "B52.88Z.0088.B05.0904162222"

# Release Date
VBoxManage setextradata "MacOS Catalina (10.15)" "VBoxInternal/Devices/efi/0/Config/DmiBIOSReleaseDate"    "08/10/13"

# Release
VBoxManage setextradata "MacOS Catalina (10.15)" "VBoxInternal/Devices/efi/0/Config/DmiBIOSReleaseMajor"   "5"
VBoxManage setextradata "MacOS Catalina (10.15)" "VBoxInternal/Devices/efi/0/Config/DmiBIOSReleaseMinor"   "9"
VBoxManage setextradata "MacOS Catalina (10.15)" "VBoxInternal/Devices/efi/0/Config/DmiBIOSFirmwareMajor"  "1"
VBoxManage setextradata "MacOS Catalina (10.15)" "VBoxInternal/Devices/efi/0/Config/DmiBIOSFirmwareMinor"  "0"
```


<br />

### B. system Information (Type 1)
```bash
# Vendor
VBoxManage setextradata "MacOS Catalina (10.15)" "VBoxInternal/Devices/efi/0/Config/DmiSystemVendor"       "Apple Inc."

# Product
VBoxManage setextradata "MacOS Catalina (10.15)" "VBoxInternal/Devices/efi/0/Config/DmiSystemProduct"      "MacBook5,2"

# Version
VBoxManage setextradata "MacOS Catalina (10.15)" "VBoxInternal/Devices/efi/0/Config/DmiSystemVersion"      "1.0"

# Number Serial
VBoxManage setextradata "MacOS Catalina (10.15)" "VBoxInternal/Devices/efi/0/Config/DmiSystemSerial"       "CSN12345678901234567"

# SKU
VBoxManage setextradata "MacOS Catalina (10.15)" "VBoxInternal/Devices/efi/0/Config/DmiSystemSKU"          "FM550EA#ACB"

# Family Product
VBoxManage setextradata "MacOS Catalina (10.15)" "VBoxInternal/Devices/efi/0/Config/DmiSystemFamily"       "Ultrabook"

# Uuid System
VBoxManage setextradata "MacOS Catalina (10.15)" "VBoxInternal/Devices/efi/0/Config/DmiSystemUuid"         "B5FA3000-9403-81E0-3ADA-F46D045CB676"
```


<br />

### C. DMI board information (type 2)
```bash
VBoxManage setextradata "MacOS Catalina (10.15)" "VBoxInternal/Devices/efi/0/Config/DmiBoardVendor"        ""
VBoxManage setextradata "MacOS Catalina (10.15)" "VBoxInternal/Devices/efi/0/Config/DmiBoardProduct"       ""
VBoxManage setextradata "MacOS Catalina (10.15)" "VBoxInternal/Devices/efi/0/Config/DmiBoardVersion"       ""
VBoxManage setextradata "MacOS Catalina (10.15)" "VBoxInternal/Devices/efi/0/Config/DmiBoardSerial"        ""
VBoxManage setextradata "MacOS Catalina (10.15)" "VBoxInternal/Devices/efi/0/Config/DmiBoardAssetTag"      ""
VBoxManage setextradata "MacOS Catalina (10.15)" "VBoxInternal/Devices/efi/0/Config/DmiBoardLocInChass"    ""
VBoxManage setextradata "MacOS Catalina (10.15)" "VBoxInternal/Devices/efi/0/Config/DmiBoardBoardType"     ""
```


### D. DMI processor information (type 4)
```bash
VBoxManage setextradata "MacOS Catalina (10.15)" "VBoxInternal/Devices/efi/0/Config/DmiChassisVendor"      ""
VBoxManage setextradata "MacOS Catalina (10.15)" "VBoxInternal/Devices/efi/0/Config/DmiChassisType"        ""
VBoxManage setextradata "MacOS Catalina (10.15)" "VBoxInternal/Devices/efi/0/Config/DmiChassisVersion"     ""
VBoxManage setextradata "MacOS Catalina (10.15)" "VBoxInternal/Devices/efi/0/Config/DmiChassisSerial"      ""
VBoxManage setextradata "MacOS Catalina (10.15)" "VBoxInternal/Devices/efi/0/Config/DmiChassisAssetTag"    ""
```

### E. DMI OEM strings (type 11)
```bash
VBoxManage setextradata "MacOS Catalina (10.15)" "VBoxInternal/Devices/efi/0/Config/DmiOEMVBoxVer"         ""
VBoxManage setextradata "MacOS Catalina (10.15)" "VBoxInternal/Devices/efi/0/Config/DmiOEMVBoxRev"         ""



VBoxManage setextradata "MacOS Catalina (10.15)" "VBoxInternal/Devices/efi/0/Config/
```
