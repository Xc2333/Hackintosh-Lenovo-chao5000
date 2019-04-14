/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20181003 (64-bit version)
 * Copyright (c) 2000 - 2018 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of SSDT-DAMD.aml, Sun Apr 14 20:00:54 2019
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x0000006C (108)
 *     Revision         0x02
 *     Checksum         0xDD
 *     OEM ID           "DAMD"
 *     OEM Table ID     "DAMD"
 *     OEM Revision     0x00000000 (0)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20190329 (538510121)
 */
DefinitionBlock ("", "SSDT", 2, "DAMD", "DAMD", 0x00000000)
{
    External (_SB_.PCI0.RP01.PXSX._OFF, MethodObj)    // 0 Arguments

    Device (XCCF)
    {
        Name (_ADR, Zero)  // _ADR: Address
        Method (_INI, 0, NotSerialized)  // _INI: Initialize
        {
            \_SB.PCI0.RP01.PXSX._OFF ()
        }
    }
}

