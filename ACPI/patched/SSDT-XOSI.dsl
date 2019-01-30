/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20180427 (64-bit version)(RM)
 * Copyright (c) 2000 - 2018 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of SSDT-XOSI.aml, Wed Jan 30 12:29:33 2019
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00000062 (98)
 *     Revision         0x02
 *     Checksum         0x6A
 *     OEM ID           "XOSI"
 *     OEM Table ID     "XOSI"
 *     OEM Revision     0x00000000 (0)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20181031 (538447921)
 */
DefinitionBlock ("", "SSDT", 2, "XOSI", "XOSI", 0x00000000)
{
    Debug = "Simulates Windows 10"
    Method (XOSI, 1, NotSerialized)
    {
        Local0 = Package (0x0A)
            {
                "Windows 2015"
            }
        Return ((Ones != Match (Local0, MEQ, Arg0, MTR, Zero, Zero)))
    }
}

