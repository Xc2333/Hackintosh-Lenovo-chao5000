/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20180427 (64-bit version)(RM)
 * Copyright (c) 2000 - 2018 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of SSDT-BIMY.aml, Wed Jan 30 12:29:33 2019
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00000238 (568)
 *     Revision         0x02
 *     Checksum         0xA6
 *     OEM ID           "BIMY"
 *     OEM Table ID     "BIMY"
 *     OEM Revision     0x00000000 (0)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20181031 (538447921)
 */
DefinitionBlock ("", "SSDT", 2, "BIMY", "BIMY", 0x00000000)
{
    External (_SB_.PCI0.LPCB.EC__, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.LPCB.EC__.B1DC, FieldUnitObj)    // (from opcode)
    External (_SB_.PCI0.LPCB.EC__.B1DV, FieldUnitObj)    // (from opcode)
    External (_SB_.PCI0.LPCB.EC__.B1FC, FieldUnitObj)    // (from opcode)
    External (_SB_.PCI0.LPCB.EC__.BAT0, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.LPCB.EC__.BAT0.PBIF, PkgObj)    // (from opcode)
    External (_SB_.PCI0.LPCB.EC__.ECAV, IntObj)    // (from opcode)
    External (_SB_.PCI0.LPCB.EC__.LFCM, MutexObj)    // (from opcode)
    External (B1DC, IntObj)    // (from opcode)
    External (B1DV, IntObj)    // (from opcode)
    External (B1FC, IntObj)    // (from opcode)
    External (PBIF, IntObj)    // (from opcode)

    Method (_SB.PCI0.LPCB.EC.BAT0._BIF, 0, NotSerialized)  // _BIF: Battery Information
    {
        Debug = "Battery information modify"
        If ((ECAV == One))
        {
            If ((Acquire (LFCM, 0xA000) == Zero))
            {
                Local0 = B1DC
                Local0 *= 0x0A
                PBIF [One] = Local0
                Local0 = B1FC
                Local0 *= 0x0A
                PBIF [0x02] = Local0
                PBIF [0x04] = B1DV
                If (B1FC)
                {
                    PBIF [0x05] = ((B1FC * 0x0A) / 0x0A)
                    PBIF [0x06] = ((B1FC * 0x0A) / 0x19)
                    PBIF [0x07] = ((B1DC * 0x0A) / 0x64)
                }

                PBIF [0x09] = "CHAO 5000"
                PBIF [0x0A] = "BAT20101001"
                PBIF [0x0B] = "LiP"
                PBIF [0x0C] = "LENOVO"
                Release (LFCM)
            }
        }

        Return (PBIF)
    }
}

