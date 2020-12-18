# Calibration

## PID Tuning
Any changes affecting the thermals of the printer should be followed with appropriate PID tuning. Installing a new glass bed, new heat break, fans, nozzle material, etc. all impact the printer's heating rates.
### Hotend
PID auto-tuning for the hotend can be run with M303 from host software (pronterface, octoprint, etc):
```gcode
M303 E0 S260    ; Auto-tune PID values for hotend with 5 cycles 0C to 260C
```
After completion, be sure to copy the new values into Configuration.h. The values can be saved to the printer without rebuilding firmware:
```gcode
M301 P24.76 I1.91 D80.16  ; Write new PID values to EEPROM
M500                        ; Store settings
M501                        ; Load settings
```
Common issues:
1. **No silicone sock on the heater block**: Since the Ender 3 fan blows onto the entire hotend, it prevents the heater block from reaching temperature.
2. **Faulty thermistor/connection/wrong thermistor number in Marlin**: The temperature varies wildly.
3. **Faulty heater cartridge/connection**: Unable to heat up/heats intermittently.
4. **PID settings aren't enabled in Marlin**: Will show up as "Bad extruder number!" when running commands.

### Bed
PID auto-tuning for the bed can be run with an M304:
```gcode
M303 E-1 S80    ; Auto-tune PID values for bed with 5 cycles 0C to 60C
```
After completion, be sure to copy the new values into Configuration.h. The values can be saved to the printer without rebuilding firmware:
```gcode
M304 P99.85 I11.14 D596.73  ; Write new PID values to EEPROM
M500                        ; Store settings
M501                        ; Load settings
```