/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20181003 (64-bit version)
 * Copyright (c) 2000 - 2018 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of /Users/Xc233/Documents/GitHub/Hackintosh-Lenovo-chao5000/ACPI/Test/SSDT-SLPB.aml, Fri Apr 19 14:42:56 2019
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00000081 (129)
 *     Revision         0x02
 *     Checksum         0x34
 *     OEM ID           "SLPB"
 *     OEM Table ID     "SLPB"
 *     OEM Revision     0x00000000 (0)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20190329 (538510121)
 */
DefinitionBlock ("", "SSDT", 2, "SLPB", "SLPB", 0x00000000)
{
    External (_SB_.PCI0.LPCB.EC__, DeviceObj)

    Scope (_SB)
    {
        Device (SLPB)
        {
            Name (_HID, EisaId ("PNP0C0E") /* Sleep Button Device */)  // _HID: Hardware ID
            Name (_STA, 0x0B)  // _STA: Status
        }
    }

    Method (_SB.PCI0.LPCB.EC._Q44, 1, NotSerialized)  // _Qxx: EC Query
    {
        Notify (\_SB.SLPB, 0x80) // Status Change
    }
}

