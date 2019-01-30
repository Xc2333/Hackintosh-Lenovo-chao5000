/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20180427 (64-bit version)(RM)
 * Copyright (c) 2000 - 2018 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of SSDT-TPD0.aml, Wed Jan 30 12:29:33 2019
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x000000AC (172)
 *     Revision         0x02
 *     Checksum         0xFC
 *     OEM ID           "TPD"
 *     OEM Table ID     "TPD"
 *     OEM Revision     0x00000000 (0)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20181031 (538447921)
 */
DefinitionBlock ("", "SSDT", 2, "TPD", "TPD", 0x00000000)
{
    External (_SB_.PCI0.I2C0.TPD0.SBFG, IntObj)    // (from opcode)
    External (_SB_.PCI0.I2C0.TPD0.SBFS, IntObj)    // (from opcode)

    Debug = "Enable touchpad work with VoodooI2C.kext"
    Method (_SB.PCI0.I2C0.TPD0._CRS, 0, Serialized)  // _CRS: Current Resource Settings
    {
        Return (ConcatenateResTemplate (SBFS, SBFG))
    }
}

