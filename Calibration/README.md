# Calibration

## PID Tuning
Any changes affecting the thermals of the printer should be followed with appropriate PID tuning. Installing a new glass bed, new heat break, fans, nozzle material, etc. all impact the printer's heating rates.
### Hotend
PID auto-tuning for the hotend can be run with M303 from host software (pronterface, octoprint, etc). For accurate results, run at least 10 cycles with the average of all temperatures you expect to print at:
```gcode
M303 E0 S260 C10   ; Auto-tune PID values for hotend with 10 cycles 0C to 260C
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
M303 E-1 S60    ; Auto-tune PID values for bed with 5 cycles 0C to 60C
```
After completion, be sure to copy the new values into Configuration.h. The values can be saved to the printer without rebuilding firmware:
```gcode
M304 P99.85 I11.14 D596.73  ; Write new PID values to EEPROM
M500                        ; Store settings
M501                        ; Load settings
```

## E-steps
1. Heat the nozzle to the temperature you'll be printing with
2. Put the printer in relative position, and print out the old e-step value
```gcode
G91 ; Relative positioning
M92 ; The "E" parameter is the old e-step value
```
3. Mark the filament with a marker as close to the extruder as possible
4. Make another mark on the incoming filament 120mm away from the first mark
5. Turn the extruder knob to push filament through the hotend until your first mark lines up with the beginning of the extruder
6. Extrude 100mm of filament
```gcode
G1 E100 F50    ; Extrude 100mm of filament at 50mm/s
```
7. New_ESteps = Old_ESteps * 100 / (120 - length_remaining) (Teaching Teach offers an [e-step calculator](https://teachingtechyt.github.io/calibration.html#esteps))
8. Write New_ESteps to the printer
```gcode
M92 E188 ; Write e-steps to printer
M500     ; Store settings
M501     ; Load settings
```
8. Repeat steps 3-7 until the length_remaining is 20mm