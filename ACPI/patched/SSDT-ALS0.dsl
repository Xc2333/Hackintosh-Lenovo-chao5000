/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20180427 (64-bit version)(RM)
 * Copyright (c) 2000 - 2018 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of SSDT-ALS0.aml, Wed Jan 30 12:29:33 2019
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00000091 (145)
 *     Revision         0x02
 *     Checksum         0x67
 *     OEM ID           "ALS0"
 *     OEM Table ID     "ALS0"
 *     OEM Revision     0x00000000 (0)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20181031 (538447921)
 */
DefinitionBlock ("", "SSDT", 2, "ALS0", "ALS0", 0x00000000)
{
    Device (_SB.ALS0)
    {
        Debug = "Inject a fake ALS device (ambient light sensor"
        Name (_HID, "ACPI0008")  // _HID: Hardware ID
        Name (_CID, "smc-als")  // _CID: Compatible ID
        Name (_ALI, 0x012C)  // _ALI: Ambient Light Illuminance
        Name (_ALR, Package (0x00){})  // _ALR: Ambient Light Response
    }
}

