/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20181003 (64-bit version)
 * Copyright (c) 2000 - 2018 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of SSDT-BIMY.aml, Sun Apr 14 20:00:54 2019
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x0000028B (651)
 *     Revision         0x02
 *     Checksum         0xC8
 *     OEM ID           "BIMY"
 *     OEM Table ID     "BIMY"
 *     OEM Revision     0x00000000 (0)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20180427 (538444839)
 */
DefinitionBlock ("", "SSDT", 2, "BIMY", "BIMY", 0x00000000)
{
    External (_SB_.PCI0.LPCB.EC__, DeviceObj)
    External (_SB_.PCI0.LPCB.EC__.B1DC, FieldUnitObj)
    External (_SB_.PCI0.LPCB.EC__.B1DV, FieldUnitObj)
    External (_SB_.PCI0.LPCB.EC__.B1FC, FieldUnitObj)
    External (_SB_.PCI0.LPCB.EC__.BAT0, DeviceObj)
    External (_SB_.PCI0.LPCB.EC__.BAT0.PBIF, PkgObj)
    External (_SB_.PCI0.LPCB.EC__.ECAV, IntObj)
    External (_SB_.PCI0.LPCB.EC__.LFCM, MutexObj)
    External (B1DC, IntObj)
    External (B1DV, IntObj)
    External (B1FC, IntObj)
    External (PBIF, IntObj)

    Method (_SB.PCI0.LPCB.EC.BAT0._BIF, 0, NotSerialized)  // _BIF: Battery Information
    {
        Debug = "Battery information modify"
        If ((ECAV == One))
        {
            If ((Acquire (LFCM, 0xA000) == Zero))
            {
                Local0 = B1DC /* External reference */
                Local0 *= 0x0A
                PBIF [One] = Local0
                Local0 = B1FC /* External reference */
                Local0 *= 0x0A
                PBIF [0x02] = Local0
                PBIF [0x04] = B1DV /* External reference */
                If (B1FC)
                {
                    PBIF [0x05] = ((B1FC * 0x0A) / 0x0A)
                    PBIF [0x06] = ((B1FC * 0x0A) / 0x19)
                    PBIF [0x07] = ((B1DC * 0x0A) / 0x64)
                }

                PBIF [0x09] = "CHAO 5000"
                PBIF [0x0A] = "L16M2PB1"
                PBIF [0x0B] = "LiP"
                PBIF [0x0C] = "LENOVO"
                Release (LFCM)
            }
        }

        Return (PBIF) /* \_SB_.PCI0.LPCB.EC__.BAT0.PBIF */
    }

    Name (_SB.PCI0.LPCB.EC.BAT0.PBIF, Package (0x0E)
    {
        Zero, 
        0xFFFFFFFF, 
        0xFFFFFFFF, 
        One, 
        0xFFFFFFFF, 
        Zero, 
        Zero, 
        0x64, 
        Zero, 
        "LCFC", 
        "BAT20101001", 
        "LiP", 
        "LENOVO", 
        0x7B
    })
}

