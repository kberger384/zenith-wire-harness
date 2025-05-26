# zenith-wire-harness
Wireviz documentation and design for Super Duty build

This repository documents the avionics for a Zenith Super Duty build.  Most components are in the Garmin G3X ecosystem.  

The build is documented using Wireviz, a Python library that interprets and visualizes YML files.

#Panel Mounted Avionics
| Item                   | Function                  | Garmin P/N   | Wiring/Install Manual URL                                                                                                                       |
| ---------------------- | ------------------------- | ------------ | ----------------------------------------------------------------------------------------------------------------------------------------------- |
| GDU 460                | 10.6” G3X Touch Display   | 010-01471-00 | [https://static.garmincdn.com/pumac/190-01115-01\_AJ.pdf](https://static.garmincdn.com/pumac/190-01115-01_AJ.pdf)                               |
| GNX 375                | IFR GPS + ADS-B + XPDR    | 010-02357-00 | [https://support.garmin.com/en-US/?partNumber=010-02357-00\&tab=manuals](https://support.garmin.com/en-US/?partNumber=010-02357-00&tab=manuals) |
| GTR 200                | COM Radio                 | 010-00985-01 | [https://support.garmin.com/en-US/?partNumber=010-00985-01\&tab=manuals](https://support.garmin.com/en-US/?partNumber=010-00985-01&tab=manuals) |
| GMA 245                | Audio Panel w/ Bluetooth  | 010-01290-00 | [https://support.garmin.com/en-US/?partNumber=010-01290-00\&tab=manuals](https://support.garmin.com/en-US/?partNumber=010-01290-00&tab=manuals) |
| GMC 507                | Autopilot Control Head    | 010-01230-00 | [https://support.garmin.com/en-US/?partNumber=010-01230-00\&tab=manuals](https://support.garmin.com/en-US/?partNumber=010-01230-00&tab=manuals) |
| G5 EFIS (Experimental) | Backup Attitude Indicator | 010-01291-30 | [https://static.garmincdn.com/pumac/190-01112-10\_AJ.pdf](https://static.garmincdn.com/pumac/190-01112-10_AJ.pdf)                               |
| G5 Backup Battery      | Power backup for G5       | 010-12373-00 | (See above in G5 manual)                                                                                                                        |

#Sensors / Other 
| Item                      | Function                             | Garmin P/N              | Wiring/Install Manual URL                                                                                                                       |
| ------------------------- | ------------------------------------ | ----------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------- |
| GAP 26 Heated Pitot       | Heated pitot + AOA (14V)             | 010-01094-00 (L-AOA-14) | [https://support.garmin.com/en-US/?partNumber=010-01094-00\&tab=manuals](https://support.garmin.com/en-US/?partNumber=010-01094-00&tab=manuals) |
| GAD 27                    | Power/lighting/trim/flap interface   | 011-02249-00            | [https://support.garmin.com/en-US/?partNumber=011-02249-00\&tab=manuals](https://support.garmin.com/en-US/?partNumber=011-02249-00&tab=manuals) |
| GAD 29                    | ARINC 429 interface (GNX 375 to G3X) | 011-02281-00            | [https://support.garmin.com/en-US/?partNumber=011-02281-00\&tab=manuals](https://support.garmin.com/en-US/?partNumber=011-02281-00&tab=manuals) |
| GMU 11                    | Magnetometer for G3X heading         | 011-02249-10            | [https://support.garmin.com/en-US/?partNumber=011-02249-10\&tab=manuals](https://support.garmin.com/en-US/?partNumber=011-02249-10&tab=manuals) |
| GSU 25C                   | AHRS + Air Data computer             | 011-02249-12            | [https://support.garmin.com/en-US/?partNumber=011-02249-12\&tab=manuals](https://support.garmin.com/en-US/?partNumber=011-02249-12&tab=manuals) |
| GSA 28 Servo (Pitch)      | Autopilot pitch servo                | 010-01007-00            | [https://support.garmin.com/en-US/?partNumber=010-01007-00\&tab=manuals](https://support.garmin.com/en-US/?partNumber=010-01007-00&tab=manuals) |
| GSA 28 Servo (Roll)       | Autopilot roll servo                 | 010-01007-00            | same as above                                                                                                                                   |
| CAN Bus Terminators (x2)  | Ends of CAN network                  | included in kits        | [G3X CAN Notes – pg. 53+](https://static.garmincdn.com/pumac/190-01115-01_AJ.pdf)                                                               |
| Ray Allen Position Sensor | Trim position sensor                 | POS-12                  | [https://www.rayallencompany.com/products/pos-12-indicator-sensor/](https://www.rayallencompany.com/products/pos-12-indicator-sensor/)          |
| Ray Allen Trim Servo      | Elevator electric trim servo         | T2-7A                   | [https://www.rayallencompany.com/products/t2-trim-tab-servo/](https://www.rayallencompany.com/products/t2-trim-tab-servo/)                      |


#Exterior Lights
| Position           | Light Type       | Model            | AeroLED P/N   | Wiring/Install Manual URL                                                                                                                                                                  |
| ------------------ | ---------------- | ---------------- | ------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| Left Wingtip       | Nav/Strobe Combo | Pulsar NSP Green | 01-1030-G-12V | [https://aeroleds.com/wp-content/uploads/2021/09/Pulsar-NSP-Installation-Manual-Rev-P.pdf](https://aeroleds.com/wp-content/uploads/2021/09/Pulsar-NSP-Installation-Manual-Rev-P.pdf)       |
| Right Wingtip      | Nav/Strobe Combo | Pulsar NSP Red   | 01-1030-R-12V | [https://aeroleds.com/wp-content/uploads/2021/09/Pulsar-NSP-Installation-Manual-Rev-P.pdf](https://aeroleds.com/wp-content/uploads/2021/09/Pulsar-NSP-Installation-Manual-Rev-P.pdf)       |
| Tail or Belly      | Beacon           | SunTail          | 01-1030-T-12V | [https://aeroleds.com/wp-content/uploads/2021/09/SunTail-Installation-Manual-Rev-G.pdf](https://aeroleds.com/wp-content/uploads/2021/09/SunTail-Installation-Manual-Rev-G.pdf)             |
| Left Wing Leading  | Landing/Wig-Wag  | Sunspot 36 LX    | 01-1030-L-12V | [https://aeroleds.com/wp-content/uploads/2023/07/Sunspot-36-LX-Installation-Manual-Rev-F.pdf](https://aeroleds.com/wp-content/uploads/2023/07/Sunspot-36-LX-Installation-Manual-Rev-F.pdf) |
| Right Wing Leading | Landing/Wig-Wag  | Sunspot 36 LX    | 01-1030-L-12V | [https://aeroleds.com/wp-content/uploads/2023/07/Sunspot-36-LX-Installation-Manual-Rev-F.pdf](https://aeroleds.com/wp-content/uploads/2023/07/Sunspot-36-LX-Installation-Manual-Rev-F.pdf) |

#Antennas
| Item          | Function                   | Garmin P/N   | Wiring/Install Manual URL                                                                                                              |
| ------------- | -------------------------- | ------------ | -------------------------------------------------------------------------------------------------------------------------------------- |
| GA 35 Antenna | GPS WAAS antenna (GNX 375) | 011-00134-00 | [https://buy.garmin.com/en-US/US/p/12035](https://buy.garmin.com/en-US/US/p/12035)                                                     |
| XPDR Antenna  | ADS-B/XPDR (GNX 375)       | —            | [https://www.aircraftspruce.com/catalog/pdf/transponderantenna.pdf](https://www.aircraftspruce.com/catalog/pdf/transponderantenna.pdf) |
| COM Antenna   | VHF (GTR 200)              | —            | [https://www.aircraftspruce.com/catalog/pdf/comant\_install.pdf](https://www.aircraftspruce.com/catalog/pdf/comant_install.pdf)        |


Building with CoPilot, ChatGPT, and good old sweat equity.  