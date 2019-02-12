/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20180427 (64-bit version)(RM)
 * Copyright (c) 2000 - 2018 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of /Volumes/ESP_MAC/EFI/CLOVER/ACPI/patched/SSDT-F13.aml, Tue Feb 12 21:14:49 2019
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x0000006A (106)
 *     Revision         0x02
 *     Checksum         0x83
 *     OEM ID           "hack"
 *     OEM Table ID     "ps2"
 *     OEM Revision     0x00000000 (0)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20180427 (538444839)
 */
DefinitionBlock ("", "SSDT", 2, "hack", "ps2", 0x00000000)
{
    Name (_SB.PCI0.LPCB.PS2K.RMCF, Package (0x02)
    {
        "Keyboard", 
        Package (0x02)
        {
            "Custom PS2 Map", 
            Package (0x02)
            {
                Package (0x00){}, 
                "e037=4f"
            }
        }
    })
}

