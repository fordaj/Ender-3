# Marlin Firmware
Last built version 2.0.7.0.2 on 12-13-20.

# Configurations for multiple printers
It is all too easy to let your printers fall into different states. Of my 4 Ender 3 Pros, 3 have BL Touches and SKR Mini E3 V1.2s, one has an E3D Supervolcano, the others have volcano clones, and the list goes on. Rather than make global changes every time I want to try out a potential upgrade, I find it easier to use conditional preprocessor directive definitions that can be switched simply by altering one number. For printer 4, my [Configuration.h](Marlin/Configuration.h) has the following line of code at the top:
```cpp
#define PRINTER_NUMBER 4
```
This parameter can be referenced conditionally by [Configuration.h](Marlin/Configuration.h), [Configuration_adv.h](Marlin/Configuration_adv.h), [__Statusscreen.h](Marlin/__Statusscreen.h), and [__Bootscreen.h](Marlin/__Bootscreen.h). I started with the Creality > Ender 3 Pro > SKR 1.2 configuration files in Marlin's [configuration repository](https://github.com/MarlinFirmware/Configurations).

# __Bootscreen.h
1. Generate a 128px x 64px black-and-white (not grayscale) [image](https://docs.google.com/drawings/d/1esvaDp8sekXSNG2BmdKc_YW7rbkxW2ErX6xhDDlnSYM/edit?usp=sharing)
2. Convert .png to .bmp with Marlin's [online bitmap converter](https://marlinfw.org/tools/u8glib/converter.html), with the "Boot" button selected.
3. Copy the code into [__Bootscreen.h](Marlin/__Bootscreen.h).

# __Statusscreen.h
1. Generate a 25px x 25px black-and-white (not grayscale) [image](https://docs.google.com/drawings/d/14gHQIaz-qxfSjFEl2ztzSXw9ercS4QekcHenZl6bkp0/edit?usp=sharing)
2. Convert .png to .bmp with Marlin's [online bitmap converter](https://marlinfw.org/tools/u8glib/converter.html). Be sure to select "Status", "Bed", "Fan", and set Nozzles to 1.
3. Copy the code into [__Statusscreen.h](Marlin/__Statusscreen.h), and edit the if statements as needed.

# Configuration.h
The changes I made to the SKR Mini E3 V1.2 [Configuration.h](Marlin/Configuration.h) file from Marlin's configuration repository are listed below.
## Setup
```cpp
#define PRINTER_NUMBER 4

#define STRING_CONFIG_H_AUTHOR "(Andrew Ford, fordworks3D LLC)"

//#define SHOW_BOOTSCREEN

#define SHOW_CUSTOM_BOOTSCREEN

#define CUSTOM_STATUS_SCREEN_IMAGE

#if PRINTER_NUMBER == 1:
  #define CUSTOM_MACHINE_NAME "printer01"
#elif PRINTER_NUMBER == 2:
  #define CUSTOM_MACHINE_NAME "printer02"
#elif PRINTER_NUMBER == 3:
  #define CUSTOM_MACHINE_NAME "printer03"
#elif PRINTER_NUMBER == 4:
  #define CUSTOM_MACHINE_NAME "printer04"
#else:
  #define CUSTOM_MACHINE_NAME "Ender-3 Pro"
#endif
```

## Thermal Settings
```cpp
#if PRINTER_NUMBER == 1:
  #define TEMP_SENSOR_0 1   // Stock Thermistor
#elif PRINTER_NUMBER == 2:
  #define TEMP_SENSOR_0 1   // Stock Thermistor
#elif PRINTER_NUMBER == 3:
  #define TEMP_SENSOR_0 1   // Stock Thermistor
#elif PRINTER_NUMBER == 4:
  #define TEMP_SENSOR_0 5   // E3D Thermistor
#else:
  #define TEMP_SENSOR_0 1   // Stock Thermistor
#endif
```

## Z Probe Options
```cpp
#if PRINTER_NUMBER == 2:
  #define BLTOUCH           // BLTouch Clone
#elif PRINTER_NUMBER == 3:
  #define BLTOUCH           // BLTouch Clone
#elif PRINTER_NUMBER == 4:
  #define BLTOUCH           // BLTouch Clone
#endif
```

## Bed Leveling
```cpp
#if PRINTER_NUMBER == 1:
  #define MESH_BED_LEVELING
#elif PRINTER_NUMBER == 2:
  #define AUTO_BED_LEVELING_3POINT
#elif PRINTER_NUMBER == 3:
  #define AUTO_BED_LEVELING_3POINT
#elif PRINTER_NUMBER == 4:
  #define AUTO_BED_LEVELING_3POINT
#else:
  //#define AUTO_BED_LEVELING_3POINT
  //#define AUTO_BED_LEVELING_LINEAR
  //#define AUTO_BED_LEVELING_BILINEAR
  //#define AUTO_BED_LEVELING_UBL
  #define MESH_BED_LEVELING
#endif

// Use "Z Safe Homing" to avoid homing with a Z probe outside the bed area.
#if PRINTER_NUMBER == 2:
  #define Z_SAFE_HOMING
#elif PRINTER_NUMBER == 3:
  #define Z_SAFE_HOMING
#elif PRINTER_NUMBER == 4:
  #define Z_SAFE_HOMING
#endif
```

## Additional Features
```cpp
// Preheat Constants
#define PREHEAT_1_LABEL       "PLA"
#define PREHEAT_1_TEMP_HOTEND 200
#define PREHEAT_1_TEMP_BED     60
#define PREHEAT_1_FAN_SPEED     0 // Value from 0 to 255

#define PREHEAT_2_LABEL       "ABS"
#define PREHEAT_2_TEMP_HOTEND 240
#define PREHEAT_2_TEMP_BED    110
#define PREHEAT_2_FAN_SPEED     0 // Value from 0 to 255

// Babystepping
#define BABYSTEP_MILLIMETER_UNITS       // Specify BABYSTEP_MULTIPLICATOR_(XY|Z) in mm instead of micro-steps
#define BABYSTEP_MULTIPLICATOR_Z  0.001       // (steps or mm) Steps or millimeter distance for each Z babystep
#define BABYSTEP_MULTIPLICATOR_XY 0.001 

#define BABYSTEP_ZPROBE_OFFSET          // Combine M851 Z and Babystepping

//Linear Advance 
//#define LIN_ADVANCE


```
