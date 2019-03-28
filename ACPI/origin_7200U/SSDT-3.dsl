/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20181031 (64-bit version)
 * Copyright (c) 2000 - 2018 Intel Corporation
 * 
 * Disassembling to non-symbolic legacy ASL operators
 *
 * Disassembly of SSDT-3.aml, Fri Jan 11 14:44:16 2019
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00000E41 (3649)
 *     Revision         0x02
 *     Checksum         0xBE
 *     OEM ID           "LENOVO"
 *     OEM Table ID     "CB-01   "
 *     OEM Revision     0x00000001 (1)
 *     Compiler ID      "ACPI"
 *     Compiler Version 0x00040000 (262144)
 */
DefinitionBlock ("", "SSDT", 2, "LENOVO", "CB-01   ", 0x00000001)
{
    External (_PR_.DTS1, UnknownObj)
    External (_PR_.DTS2, UnknownObj)
    External (_PR_.DTS3, UnknownObj)
    External (_PR_.DTS4, UnknownObj)
    External (_PR_.PDTS, UnknownObj)
    External (_TZ_.TZ00._TMP, UnknownObj)
    External (_TZ_.TZ01._TMP, UnknownObj)
    External (PAMT, UnknownObj)
    External (TSDB, UnknownObj)

    Scope (\_SB)
    {
        Device (PTID)
        {
            Name (_HID, EisaId ("INT340E") /* Motherboard Resources */)  // _HID: Hardware ID
            Name (_CID, EisaId ("PNP0C02") /* PNP Motherboard Resources */)  // _CID: Compatible ID
            Name (IVER, 0x00030000)
            Name (_STA, 0x0F)  // _STA: Status
            Method (TSDL, 0, NotSerialized)
            {
                If (LEqual (TSDB, One))
                {
                    Return (TSD2) /* \_SB_.PTID.TSD2 */
                }

                Return (TSD1) /* \_SB_.PTID.TSD1 */
            }

            Name (TSD1, Package (0x28)
            {
                Zero, 
                "CPU Core 0 DTS", 
                Zero, 
                "CPU Core 1 DTS", 
                Zero, 
                "CPU Core 2 DTS", 
                Zero, 
                "CPU Core 3 DTS", 
                Zero, 
                "CPU Core Package DTS", 
                0x03, 
                "DIMM0_hotspot_U4C1", 
                0x03, 
                "DIMM1_hotspot_Q4D1", 
                0x03, 
                "IMVP_conn_Q7C1", 
                0x03, 
                "board_hotspot1_U3G3", 
                0x03, 
                "board_hotspot2_Q3G1", 
                Zero, 
                "CPU Package Temperature", 
                0x05, 
                "PCH DTS Temperature from PCH", 
                Zero, 
                "CPU PECI reading", 
                0x05, 
                "SA DTS Temperature from PCH", 
                0x02, 
                "TZ00 _TMP", 
                0x02, 
                "TZ01 _TMP", 
                0x03, 
                "SDRAM_hotspot_RT5B1", 
                0x03, 
                "NGFF_slot_RT6G1", 
                0x03, 
                "IMVP_conn_RT7D1", 
                0x03, 
                "board_hotspot3_RT8F1"
            })
            Name (TSD2, Package (0x26)
            {
                Zero, 
                "CPU Core 0 DTS", 
                Zero, 
                "CPU Core 1 DTS", 
                Zero, 
                "CPU Core 2 DTS", 
                Zero, 
                "CPU Core 3 DTS", 
                Zero, 
                "CPU Core Package DTS", 
                0x03, 
                "A-Skin Hotspot U21", 
                0x03, 
                "A-Skin Hotspot U21 IR", 
                0x03, 
                "B-Skin Hotspot U1", 
                0x03, 
                "B-Skin Hotspot U1 IR", 
                Zero, 
                "CPU Package Temperature", 
                0x05, 
                "PCH DTS Temperature from PCH", 
                Zero, 
                "CPU PECI reading", 
                0x05, 
                "SA DTS Temperature from PCH", 
                0x02, 
                "TZ00 _TMP", 
                0x03, 
                "SoC VR Thermsitor RT11", 
                0x03, 
                "Memory Thermistor RT9", 
                0x03, 
                "GNSS Board Ambient Thermistor R4", 
                0x03, 
                "System VR Thermistor RT10", 
                0x03, 
                "A-Skin Skycam Thermistor RT8"
            })
            Name (PSDL, Package (0x22)
            {
                0x0B, 
                "Cpu Power (mW)", 
                0x0B, 
                "Platform Power (mW)", 
                0x0B, 
                "Cpu Average Power (mW)", 
                0x0B, 
                "Platform Average Power (mW)", 
                0x0C, 
                "Battery 1 Design Capacity (mWh)", 
                0x0C, 
                "Battery 1 Remaining Capacity (mWh)", 
                0x0C, 
                "Battery 1 Full Charge Capacity (mWh)", 
                0x0C, 
                "Battery 1 Full Resolution Voltage (mV)", 
                0x0C, 
                "Battery 1 Full Resolution Discharge Current (mA)", 
                0x0C, 
                "Battery 1 Full Resolution Charge Current (mA)", 
                0x0C, 
                "Battery 2 Remaining Capacity (mWh)", 
                0x0C, 
                "Battery 2 Full Charge Capacity (mWh)", 
                0x0C, 
                "Battery 2 Full Resolution Voltage (mV)", 
                0x0C, 
                "Battery 2 Full Resolution Discharge Current (mA)", 
                0x0C, 
                "Battery 2 Full Resolution Charge Current (mA)", 
                0x0C, 
                "Battery Pack 1 maximum power (mW)", 
                0x0C, 
                "Battery Pack 2 maximum power (mW)"
            })
            Method (OSDL, 0, NotSerialized)
            {
                If (LEqual (TSDB, One))
                {
                    Return (OSD2) /* \_SB_.PTID.OSD2 */
                }

                Return (OSD1) /* \_SB_.PTID.OSD1 */
            }

            Name (OSD1, Package (0x15)
            {
                0x04, 
                "CPU Fan Duty Cycle", 
                "RAW", 
                0x04, 
                "CPU Fan #1 Speed", 
                "RPM", 
                0x03, 
                "Skin Temp 0", 
                "RAW", 
                0x03, 
                "Thermistor 1 ", 
                "RAW", 
                0x03, 
                "Thermistor 2 ", 
                "RAW", 
                0x03, 
                "Thermistor 3 ", 
                "RAW", 
                0x03, 
                "Thermistor 4 ", 
                "RAW"
            })
            Name (OSD2, Package (0x18)
            {
                0x04, 
                "CPU Fan Duty Cycle", 
                "RAW", 
                0x04, 
                "CPU Fan #1 Speed", 
                "RPM", 
                0x03, 
                "Skin Temp 0", 
                "RAW", 
                0x03, 
                "Thermistor 1 ", 
                "RAW", 
                0x03, 
                "Thermistor 2 ", 
                "RAW", 
                0x03, 
                "Thermistor 3 ", 
                "RAW", 
                0x03, 
                "Thermistor 4 ", 
                "RAW", 
                0x03, 
                "Thermistor 5 ", 
                "RAW"
            })
            Method (XLAT, 1, Serialized)
            {
                If (LGreaterEqual (Arg0, 0x03AC))
                {
                    Return (0x0A47)
                }

                If (LGreaterEqual (Arg0, 0x0394))
                {
                    Return (0x0A79)
                }

                If (LGreaterEqual (Arg0, 0x0374))
                {
                    Return (0x0AAB)
                }

                If (LGreaterEqual (Arg0, 0x0354))
                {
                    Return (0x0ADD)
                }

                If (LGreaterEqual (Arg0, 0x032C))
                {
                    Return (0x0B0F)
                }

                If (LGreaterEqual (Arg0, 0x0300))
                {
                    Return (0x0B41)
                }

                If (LGreaterEqual (Arg0, 0x02D0))
                {
                    Return (0x0B73)
                }

                If (LGreaterEqual (Arg0, 0x029C))
                {
                    Return (0x0BA5)
                }

                If (LGreaterEqual (Arg0, 0x0264))
                {
                    Return (0x0BD7)
                }

                If (LGreaterEqual (Arg0, 0x0230))
                {
                    Return (0x0C09)
                }

                If (LGreaterEqual (Arg0, 0x01FC))
                {
                    Return (0x0C3B)
                }

                If (LGreaterEqual (Arg0, 0x01C8))
                {
                    Return (0x0C6D)
                }

                If (LGreaterEqual (Arg0, 0x0194))
                {
                    Return (0x0C9F)
                }

                If (LGreaterEqual (Arg0, 0x0164))
                {
                    Return (0x0CD1)
                }

                If (LGreaterEqual (Arg0, 0x0138))
                {
                    Return (0x0D03)
                }

                If (LGreaterEqual (Arg0, 0x0114))
                {
                    Return (0x0D35)
                }

                If (LGreaterEqual (Arg0, 0xF0))
                {
                    Return (0x0D67)
                }

                If (LGreaterEqual (Arg0, 0xD4))
                {
                    Return (0x0D99)
                }

                If (LGreaterEqual (Arg0, 0xB8))
                {
                    Return (0x0DCB)
                }

                If (LGreaterEqual (Arg0, 0xA0))
                {
                    Return (0x0DFD)
                }

                If (LGreaterEqual (Arg0, 0x8C))
                {
                    Return (0x0E2F)
                }

                If (LGreaterEqual (Arg0, 0x7C))
                {
                    Return (0x0E61)
                }

                If (LGreaterEqual (Arg0, 0x68))
                {
                    Return (0x0E93)
                }

                If (LGreaterEqual (Arg0, 0x58))
                {
                    Return (0x0EC5)
                }

                Return (0x0EC5)
            }

            Method (XSDS, 1, Serialized)
            {
                If (LGreaterEqual (Arg0, 0x02F0))
                {
                    Return (0x0A47)
                }

                If (LGreaterEqual (Arg0, 0x02DC))
                {
                    Return (0x0A79)
                }

                If (LGreaterEqual (Arg0, 0x02C4))
                {
                    Return (0x0AAB)
                }

                If (LGreaterEqual (Arg0, 0x02A8))
                {
                    Return (0x0ADD)
                }

                If (LGreaterEqual (Arg0, 0x0288))
                {
                    Return (0x0B0F)
                }

                If (LGreaterEqual (Arg0, 0x0264))
                {
                    Return (0x0B41)
                }

                If (LGreaterEqual (Arg0, 0x0240))
                {
                    Return (0x0B73)
                }

                If (LGreaterEqual (Arg0, 0x0214))
                {
                    Return (0x0BA5)
                }

                If (LGreaterEqual (Arg0, 0x01EC))
                {
                    Return (0x0BD7)
                }

                If (LGreaterEqual (Arg0, 0x01C0))
                {
                    Return (0x0C09)
                }

                If (LGreaterEqual (Arg0, 0x0194))
                {
                    Return (0x0C3B)
                }

                If (LGreaterEqual (Arg0, 0x016C))
                {
                    Return (0x0C6D)
                }

                If (LGreaterEqual (Arg0, 0x0144))
                {
                    Return (0x0C9F)
                }

                If (LGreaterEqual (Arg0, 0x011C))
                {
                    Return (0x0CD1)
                }

                If (LGreaterEqual (Arg0, 0xFC))
                {
                    Return (0x0D03)
                }

                If (LGreaterEqual (Arg0, 0xDC))
                {
                    Return (0x0D35)
                }

                If (LGreaterEqual (Arg0, 0xC0))
                {
                    Return (0x0D67)
                }

                If (LGreaterEqual (Arg0, 0xA8))
                {
                    Return (0x0D99)
                }

                If (LGreaterEqual (Arg0, 0x94))
                {
                    Return (0x0DCB)
                }

                If (LGreaterEqual (Arg0, 0x80))
                {
                    Return (0x0DFD)
                }

                If (LGreaterEqual (Arg0, 0x70))
                {
                    Return (0x0E2F)
                }

                If (LGreaterEqual (Arg0, 0x60))
                {
                    Return (0x0E61)
                }

                If (LGreaterEqual (Arg0, 0x54))
                {
                    Return (0x0E93)
                }

                If (LGreaterEqual (Arg0, 0x48))
                {
                    Return (0x0EC5)
                }

                Return (0x0EC5)
            }

            Method (TSDD, 0, Serialized)
            {
                If (LEqual (TSDB, One))
                {
                    Name (TMPX, Package (0x13)
                    {
                        0x80000000, 
                        0x80000000, 
                        0x80000000, 
                        0x80000000, 
                        0x80000000, 
                        0x80000000, 
                        0x80000000, 
                        0x80000000, 
                        0x80000000, 
                        0x80000000, 
                        0x80000000, 
                        0x80000000, 
                        0x80000000, 
                        0x80000000, 
                        0x80000000, 
                        0x80000000, 
                        0x80000000, 
                        0x80000000, 
                        0x80000000
                    })
                    Store (Add (Multiply (\_PR.DTS1, 0x0A), 0x0AAC), Index (TMPX, Zero))
                    Store (Add (Multiply (\_PR.DTS2, 0x0A), 0x0AAC), Index (TMPX, One))
                    Store (Add (Multiply (\_PR.DTS3, 0x0A), 0x0AAC), Index (TMPX, 0x02))
                    Store (Add (Multiply (\_PR.DTS4, 0x0A), 0x0AAC), Index (TMPX, 0x03))
                    Store (Add (Multiply (\_PR.PDTS, 0x0A), 0x0AAC), Index (TMPX, 0x04))
                    Store (\_TZ.TZ00._TMP, Index (TMPX, 0x0D))
                    Return (TMPX) /* \_SB_.PTID.TSDD.TMPX */
                }

                Name (TMPV, Package (0x14)
                {
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000
                })
                Store (Add (Multiply (\_PR.DTS1, 0x0A), 0x0AAC), Index (TMPV, Zero))
                Store (Add (Multiply (\_PR.DTS2, 0x0A), 0x0AAC), Index (TMPV, One))
                Store (Add (Multiply (\_PR.DTS3, 0x0A), 0x0AAC), Index (TMPV, 0x02))
                Store (Add (Multiply (\_PR.DTS4, 0x0A), 0x0AAC), Index (TMPV, 0x03))
                Store (Add (Multiply (\_PR.PDTS, 0x0A), 0x0AAC), Index (TMPV, 0x04))
                Store (\_TZ.TZ00._TMP, Index (TMPV, 0x0E))
                Store (\_TZ.TZ01._TMP, Index (TMPV, 0x0F))
                Return (TMPV) /* \_SB_.PTID.TSDD.TMPV */
            }

            Method (PSDD, 0, Serialized)
            {
                Name (PWRV, Package (0x11)
                {
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000
                })
                Return (PWRV) /* \_SB_.PTID.PSDD.PWRV */
            }

            Method (OSDD, 0, Serialized)
            {
                Return (Package (0x00){})
            }

            Method (SDSP, 0, NotSerialized)
            {
                Return (0x0A)
            }

            Name (PADA, Package (0x0A)
            {
                One, 
                0xFFFFFFFF, 
                0xFFFFFFFF, 
                0x1A, 
                0xFFFFFFFF, 
                0xFFFFFFFF, 
                0xFFFFFFFF, 
                0xFFFFFFFF, 
                0xFFFFFFFF, 
                0xFFFFFFFF
            })
            Name (PADD, Package (0x0A)
            {
                0x02, 
                0x06A4, 
                0x06A0, 
                0x1A, 
                0x62, 
                0x63, 
                0x60, 
                0x61, 
                0x65, 
                0x64
            })
            Method (PADT, 0, NotSerialized)
            {
                If (PAMT)
                {
                    Return (PADA) /* \_SB_.PTID.PADA */
                }

                Return (PADD) /* \_SB_.PTID.PADD */
            }

            Method (RPMD, 0, Serialized)
            {
                Name (MTMP, Buffer (0x1A){})
                Return (MTMP) /* \_SB_.PTID.RPMD.MTMP */
            }

            Method (WPMD, 1, NotSerialized)
            {
                If (LNotEqual (SizeOf (Arg0), 0x1A))
                {
                    Return (0xFFFFFFFF)
                }

                Return (Zero)
            }

            Method (ISPC, 0, NotSerialized)
            {
                Return (Zero)
            }

            Method (ENPC, 0, NotSerialized)
            {
                Return (Zero)
            }

            Method (RPCS, 0, NotSerialized)
            {
            }

            Method (RPEC, 0, NotSerialized)
            {
                Store (Zero, Local0)
                Return (Local0)
            }
        }
    }
}

