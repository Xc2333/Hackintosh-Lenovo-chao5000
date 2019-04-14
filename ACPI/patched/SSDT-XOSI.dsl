/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20181003 (64-bit version)
 * Copyright (c) 2000 - 2018 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of SSDT-XOSI.aml, Sun Apr 14 20:00:54 2019
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00000058 (88)
 *     Revision         0x02
 *     Checksum         0x6C
 *     OEM ID           "XOSI"
 *     OEM Table ID     "XOSI"
 *     OEM Revision     0x00000000 (0)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20180810 (538445840)
 */
DefinitionBlock ("", "SSDT", 2, "XOSI", "XOSI", 0x00000000)
{
    Debug = "Simulates Windows 10"
    Method (XOSI, 1, NotSerialized)
    {
        If ((Arg0 == "Windows 2015"))
        {
            Return (Ones)
        }
    }
}

