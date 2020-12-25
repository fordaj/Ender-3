; ### Marlin K-Factor Calibration Pattern ###
; -------------------------------------------
;
; Printer: printer02
; Filament: inland PLA
; Created: Fri Dec 25 2020 05:35:06 GMT-0500 (EST)
;
; Settings Printer:
; Filament Diameter = 1.75 mm
; Nozzle Diameter = 0.4 mm
; Nozzle Temperature = 220 °C
; Bed Temperature = 80 °C
; Retraction Distance = 6 mm
; Layer Height = 0.2 mm
; Extruder = 0 
; Fan Speed = 0 %
; Z-axis Offset = 0 mm
;
; Settings Print Bed:
; Bed Shape = Rect
; Bed Size X = 235 mm
; Bed Size Y = 235 mm
; Origin Bed Center = false
;
; Settings Speed:
; Slow Printing Speed = 1800 mm/m
; Fast Printing Speed = 6000 mm/m
; Movement Speed = 9000 mm/m
; Retract Speed = 2700 mm/m
; Unretract Speed = 1800 mm/m
; Printing Acceleration = 500 mm/s^2
; Jerk X-axis =  firmware default
; Jerk Y-axis =  firmware default
; Jerk Z-axis =  firmware default
; Jerk Extruder =  firmware default
;
; Settings Pattern:
; Linear Advance Version = 1.5
; Starting Value Factor = 0
; Ending Value Factor = 2
; Factor Stepping = 0.05
; Test Line Spacing = 5 mm
; Test Line Length Slow = 20 mm
; Test Line Length Fast = 40 mm
; Print Pattern = Standard
; Print Frame = false
; Number Lines = true
; Print Size X = 98 mm
; Print Size Y = 225 mm
; Print Rotation = 0 degree
;
; Settings Advance:
; Nozzle / Line Ratio = 1.125
; Bed leveling = 0
; Use FWRETRACT = false
; Extrusion Multiplier = 1
; Prime Nozzle = true
; Prime Extrusion Multiplier = 2.5
; Prime Speed = 1800
; Dwell Time = 2 s
;
; prepare printing
;
G21 ; Millimeter units
G90 ; Absolute XYZ
M83 ; Relative E
G28 ; Home all axes
T0 ; Switch to tool 0
G1 Z5 F100 ; Z raise
M104 S220 ; Set nozzle temperature (no wait)
M190 S80 ; Set bed temperature (wait)
M109 S220 ; Wait for nozzle temp
M204 P500 ; Acceleration
G92 E0 ; Reset extruder distance
M106 P0 S0
G1 X117.5 Y117.5 F9000 ; move to start
G1 Z0.2 F1800 ; Move to layer height
;
; prime nozzle
;
G1 X68.5 Y5 F9000 ; move to start
G1 X68.5 Y230 E21.0474 F1800 ; print line
G1 X69.175 Y230 F9000 ; move to start
G1 X69.175 Y5 E21.0474 F1800 ; print line
G1 E-6 F2700 ; retract
;
; start the Test pattern
;
G4 P2000 ; Pause (dwell) for 2 seconds
G1 X78.5 Y5 F9000 ; move to start
M900 K0 ; set K-factor
M117 K0 ; 
G1 E6 F1800 ; un-retract
G1 X98.5 Y5 E0.7484 F1800 ; print line
G1 X138.5 Y5 E1.4967 F6000 ; print line
G1 X158.5 Y5 E0.7484 F1800 ; print line
G1 E-6 F2700 ; retract
G1 X78.5 Y10 F9000 ; move to start
M900 K0.05 ; set K-factor
M117 K0.05 ; 
G1 E6 F1800 ; un-retract
G1 X98.5 Y10 E0.7484 F1800 ; print line
G1 X138.5 Y10 E1.4967 F6000 ; print line
G1 X158.5 Y10 E0.7484 F1800 ; print line
G1 E-6 F2700 ; retract
G1 X78.5 Y15 F9000 ; move to start
M900 K0.1 ; set K-factor
M117 K0.1 ; 
G1 E6 F1800 ; un-retract
G1 X98.5 Y15 E0.7484 F1800 ; print line
G1 X138.5 Y15 E1.4967 F6000 ; print line
G1 X158.5 Y15 E0.7484 F1800 ; print line
G1 E-6 F2700 ; retract
G1 X78.5 Y20 F9000 ; move to start
M900 K0.15 ; set K-factor
M117 K0.15 ; 
G1 E6 F1800 ; un-retract
G1 X98.5 Y20 E0.7484 F1800 ; print line
G1 X138.5 Y20 E1.4967 F6000 ; print line
G1 X158.5 Y20 E0.7484 F1800 ; print line
G1 E-6 F2700 ; retract
G1 X78.5 Y25 F9000 ; move to start
M900 K0.2 ; set K-factor
M117 K0.2 ; 
G1 E6 F1800 ; un-retract
G1 X98.5 Y25 E0.7484 F1800 ; print line
G1 X138.5 Y25 E1.4967 F6000 ; print line
G1 X158.5 Y25 E0.7484 F1800 ; print line
G1 E-6 F2700 ; retract
G1 X78.5 Y30 F9000 ; move to start
M900 K0.25 ; set K-factor
M117 K0.25 ; 
G1 E6 F1800 ; un-retract
G1 X98.5 Y30 E0.7484 F1800 ; print line
G1 X138.5 Y30 E1.4967 F6000 ; print line
G1 X158.5 Y30 E0.7484 F1800 ; print line
G1 E-6 F2700 ; retract
G1 X78.5 Y35 F9000 ; move to start
M900 K0.3 ; set K-factor
M117 K0.3 ; 
G1 E6 F1800 ; un-retract
G1 X98.5 Y35 E0.7484 F1800 ; print line
G1 X138.5 Y35 E1.4967 F6000 ; print line
G1 X158.5 Y35 E0.7484 F1800 ; print line
G1 E-6 F2700 ; retract
G1 X78.5 Y40 F9000 ; move to start
M900 K0.35 ; set K-factor
M117 K0.35 ; 
G1 E6 F1800 ; un-retract
G1 X98.5 Y40 E0.7484 F1800 ; print line
G1 X138.5 Y40 E1.4967 F6000 ; print line
G1 X158.5 Y40 E0.7484 F1800 ; print line
G1 E-6 F2700 ; retract
G1 X78.5 Y45 F9000 ; move to start
M900 K0.4 ; set K-factor
M117 K0.4 ; 
G1 E6 F1800 ; un-retract
G1 X98.5 Y45 E0.7484 F1800 ; print line
G1 X138.5 Y45 E1.4967 F6000 ; print line
G1 X158.5 Y45 E0.7484 F1800 ; print line
G1 E-6 F2700 ; retract
G1 X78.5 Y50 F9000 ; move to start
M900 K0.45 ; set K-factor
M117 K0.45 ; 
G1 E6 F1800 ; un-retract
G1 X98.5 Y50 E0.7484 F1800 ; print line
G1 X138.5 Y50 E1.4967 F6000 ; print line
G1 X158.5 Y50 E0.7484 F1800 ; print line
G1 E-6 F2700 ; retract
G1 X78.5 Y55 F9000 ; move to start
M900 K0.5 ; set K-factor
M117 K0.5 ; 
G1 E6 F1800 ; un-retract
G1 X98.5 Y55 E0.7484 F1800 ; print line
G1 X138.5 Y55 E1.4967 F6000 ; print line
G1 X158.5 Y55 E0.7484 F1800 ; print line
G1 E-6 F2700 ; retract
G1 X78.5 Y60 F9000 ; move to start
M900 K0.55 ; set K-factor
M117 K0.55 ; 
G1 E6 F1800 ; un-retract
G1 X98.5 Y60 E0.7484 F1800 ; print line
G1 X138.5 Y60 E1.4967 F6000 ; print line
G1 X158.5 Y60 E0.7484 F1800 ; print line
G1 E-6 F2700 ; retract
G1 X78.5 Y65 F9000 ; move to start
M900 K0.6 ; set K-factor
M117 K0.6 ; 
G1 E6 F1800 ; un-retract
G1 X98.5 Y65 E0.7484 F1800 ; print line
G1 X138.5 Y65 E1.4967 F6000 ; print line
G1 X158.5 Y65 E0.7484 F1800 ; print line
G1 E-6 F2700 ; retract
G1 X78.5 Y70 F9000 ; move to start
M900 K0.65 ; set K-factor
M117 K0.65 ; 
G1 E6 F1800 ; un-retract
G1 X98.5 Y70 E0.7484 F1800 ; print line
G1 X138.5 Y70 E1.4967 F6000 ; print line
G1 X158.5 Y70 E0.7484 F1800 ; print line
G1 E-6 F2700 ; retract
G1 X78.5 Y75 F9000 ; move to start
M900 K0.7 ; set K-factor
M117 K0.7 ; 
G1 E6 F1800 ; un-retract
G1 X98.5 Y75 E0.7484 F1800 ; print line
G1 X138.5 Y75 E1.4967 F6000 ; print line
G1 X158.5 Y75 E0.7484 F1800 ; print line
G1 E-6 F2700 ; retract
G1 X78.5 Y80 F9000 ; move to start
M900 K0.75 ; set K-factor
M117 K0.75 ; 
G1 E6 F1800 ; un-retract
G1 X98.5 Y80 E0.7484 F1800 ; print line
G1 X138.5 Y80 E1.4967 F6000 ; print line
G1 X158.5 Y80 E0.7484 F1800 ; print line
G1 E-6 F2700 ; retract
G1 X78.5 Y85 F9000 ; move to start
M900 K0.8 ; set K-factor
M117 K0.8 ; 
G1 E6 F1800 ; un-retract
G1 X98.5 Y85 E0.7484 F1800 ; print line
G1 X138.5 Y85 E1.4967 F6000 ; print line
G1 X158.5 Y85 E0.7484 F1800 ; print line
G1 E-6 F2700 ; retract
G1 X78.5 Y90 F9000 ; move to start
M900 K0.85 ; set K-factor
M117 K0.85 ; 
G1 E6 F1800 ; un-retract
G1 X98.5 Y90 E0.7484 F1800 ; print line
G1 X138.5 Y90 E1.4967 F6000 ; print line
G1 X158.5 Y90 E0.7484 F1800 ; print line
G1 E-6 F2700 ; retract
G1 X78.5 Y95 F9000 ; move to start
M900 K0.9 ; set K-factor
M117 K0.9 ; 
G1 E6 F1800 ; un-retract
G1 X98.5 Y95 E0.7484 F1800 ; print line
G1 X138.5 Y95 E1.4967 F6000 ; print line
G1 X158.5 Y95 E0.7484 F1800 ; print line
G1 E-6 F2700 ; retract
G1 X78.5 Y100 F9000 ; move to start
M900 K0.95 ; set K-factor
M117 K0.95 ; 
G1 E6 F1800 ; un-retract
G1 X98.5 Y100 E0.7484 F1800 ; print line
G1 X138.5 Y100 E1.4967 F6000 ; print line
G1 X158.5 Y100 E0.7484 F1800 ; print line
G1 E-6 F2700 ; retract
G1 X78.5 Y105 F9000 ; move to start
M900 K1 ; set K-factor
M117 K1 ; 
G1 E6 F1800 ; un-retract
G1 X98.5 Y105 E0.7484 F1800 ; print line
G1 X138.5 Y105 E1.4967 F6000 ; print line
G1 X158.5 Y105 E0.7484 F1800 ; print line
G1 E-6 F2700 ; retract
G1 X78.5 Y110 F9000 ; move to start
M900 K1.05 ; set K-factor
M117 K1.05 ; 
G1 E6 F1800 ; un-retract
G1 X98.5 Y110 E0.7484 F1800 ; print line
G1 X138.5 Y110 E1.4967 F6000 ; print line
G1 X158.5 Y110 E0.7484 F1800 ; print line
G1 E-6 F2700 ; retract
G1 X78.5 Y115 F9000 ; move to start
M900 K1.1 ; set K-factor
M117 K1.1 ; 
G1 E6 F1800 ; un-retract
G1 X98.5 Y115 E0.7484 F1800 ; print line
G1 X138.5 Y115 E1.4967 F6000 ; print line
G1 X158.5 Y115 E0.7484 F1800 ; print line
G1 E-6 F2700 ; retract
G1 X78.5 Y120 F9000 ; move to start
M900 K1.15 ; set K-factor
M117 K1.15 ; 
G1 E6 F1800 ; un-retract
G1 X98.5 Y120 E0.7484 F1800 ; print line
G1 X138.5 Y120 E1.4967 F6000 ; print line
G1 X158.5 Y120 E0.7484 F1800 ; print line
G1 E-6 F2700 ; retract
G1 X78.5 Y125 F9000 ; move to start
M900 K1.2 ; set K-factor
M117 K1.2 ; 
G1 E6 F1800 ; un-retract
G1 X98.5 Y125 E0.7484 F1800 ; print line
G1 X138.5 Y125 E1.4967 F6000 ; print line
G1 X158.5 Y125 E0.7484 F1800 ; print line
G1 E-6 F2700 ; retract
G1 X78.5 Y130 F9000 ; move to start
M900 K1.25 ; set K-factor
M117 K1.25 ; 
G1 E6 F1800 ; un-retract
G1 X98.5 Y130 E0.7484 F1800 ; print line
G1 X138.5 Y130 E1.4967 F6000 ; print line
G1 X158.5 Y130 E0.7484 F1800 ; print line
G1 E-6 F2700 ; retract
G1 X78.5 Y135 F9000 ; move to start
M900 K1.3 ; set K-factor
M117 K1.3 ; 
G1 E6 F1800 ; un-retract
G1 X98.5 Y135 E0.7484 F1800 ; print line
G1 X138.5 Y135 E1.4967 F6000 ; print line
G1 X158.5 Y135 E0.7484 F1800 ; print line
G1 E-6 F2700 ; retract
G1 X78.5 Y140 F9000 ; move to start
M900 K1.35 ; set K-factor
M117 K1.35 ; 
G1 E6 F1800 ; un-retract
G1 X98.5 Y140 E0.7484 F1800 ; print line
G1 X138.5 Y140 E1.4967 F6000 ; print line
G1 X158.5 Y140 E0.7484 F1800 ; print line
G1 E-6 F2700 ; retract
G1 X78.5 Y145 F9000 ; move to start
M900 K1.4 ; set K-factor
M117 K1.4 ; 
G1 E6 F1800 ; un-retract
G1 X98.5 Y145 E0.7484 F1800 ; print line
G1 X138.5 Y145 E1.4967 F6000 ; print line
G1 X158.5 Y145 E0.7484 F1800 ; print line
G1 E-6 F2700 ; retract
G1 X78.5 Y150 F9000 ; move to start
M900 K1.45 ; set K-factor
M117 K1.45 ; 
G1 E6 F1800 ; un-retract
G1 X98.5 Y150 E0.7484 F1800 ; print line
G1 X138.5 Y150 E1.4967 F6000 ; print line
G1 X158.5 Y150 E0.7484 F1800 ; print line
G1 E-6 F2700 ; retract
G1 X78.5 Y155 F9000 ; move to start
M900 K1.5 ; set K-factor
M117 K1.5 ; 
G1 E6 F1800 ; un-retract
G1 X98.5 Y155 E0.7484 F1800 ; print line
G1 X138.5 Y155 E1.4967 F6000 ; print line
G1 X158.5 Y155 E0.7484 F1800 ; print line
G1 E-6 F2700 ; retract
G1 X78.5 Y160 F9000 ; move to start
M900 K1.55 ; set K-factor
M117 K1.55 ; 
G1 E6 F1800 ; un-retract
G1 X98.5 Y160 E0.7484 F1800 ; print line
G1 X138.5 Y160 E1.4967 F6000 ; print line
G1 X158.5 Y160 E0.7484 F1800 ; print line
G1 E-6 F2700 ; retract
G1 X78.5 Y165 F9000 ; move to start
M900 K1.6 ; set K-factor
M117 K1.6 ; 
G1 E6 F1800 ; un-retract
G1 X98.5 Y165 E0.7484 F1800 ; print line
G1 X138.5 Y165 E1.4967 F6000 ; print line
G1 X158.5 Y165 E0.7484 F1800 ; print line
G1 E-6 F2700 ; retract
G1 X78.5 Y170 F9000 ; move to start
M900 K1.65 ; set K-factor
M117 K1.65 ; 
G1 E6 F1800 ; un-retract
G1 X98.5 Y170 E0.7484 F1800 ; print line
G1 X138.5 Y170 E1.4967 F6000 ; print line
G1 X158.5 Y170 E0.7484 F1800 ; print line
G1 E-6 F2700 ; retract
G1 X78.5 Y175 F9000 ; move to start
M900 K1.7 ; set K-factor
M117 K1.7 ; 
G1 E6 F1800 ; un-retract
G1 X98.5 Y175 E0.7484 F1800 ; print line
G1 X138.5 Y175 E1.4967 F6000 ; print line
G1 X158.5 Y175 E0.7484 F1800 ; print line
G1 E-6 F2700 ; retract
G1 X78.5 Y180 F9000 ; move to start
M900 K1.75 ; set K-factor
M117 K1.75 ; 
G1 E6 F1800 ; un-retract
G1 X98.5 Y180 E0.7484 F1800 ; print line
G1 X138.5 Y180 E1.4967 F6000 ; print line
G1 X158.5 Y180 E0.7484 F1800 ; print line
G1 E-6 F2700 ; retract
G1 X78.5 Y185 F9000 ; move to start
M900 K1.8 ; set K-factor
M117 K1.8 ; 
G1 E6 F1800 ; un-retract
G1 X98.5 Y185 E0.7484 F1800 ; print line
G1 X138.5 Y185 E1.4967 F6000 ; print line
G1 X158.5 Y185 E0.7484 F1800 ; print line
G1 E-6 F2700 ; retract
G1 X78.5 Y190 F9000 ; move to start
M900 K1.85 ; set K-factor
M117 K1.85 ; 
G1 E6 F1800 ; un-retract
G1 X98.5 Y190 E0.7484 F1800 ; print line
G1 X138.5 Y190 E1.4967 F6000 ; print line
G1 X158.5 Y190 E0.7484 F1800 ; print line
G1 E-6 F2700 ; retract
G1 X78.5 Y195 F9000 ; move to start
M900 K1.9 ; set K-factor
M117 K1.9 ; 
G1 E6 F1800 ; un-retract
G1 X98.5 Y195 E0.7484 F1800 ; print line
G1 X138.5 Y195 E1.4967 F6000 ; print line
G1 X158.5 Y195 E0.7484 F1800 ; print line
G1 E-6 F2700 ; retract
G1 X78.5 Y200 F9000 ; move to start
M900 K1.95 ; set K-factor
M117 K1.95 ; 
G1 E6 F1800 ; un-retract
G1 X98.5 Y200 E0.7484 F1800 ; print line
G1 X138.5 Y200 E1.4967 F6000 ; print line
G1 X158.5 Y200 E0.7484 F1800 ; print line
G1 E-6 F2700 ; retract
G1 X78.5 Y205 F9000 ; move to start
;
; Mark the test area for reference
M117 K0
M900 K0 ; Set K-factor 0
G1 X98.5 Y210 F9000 ; move to start
G1 E6 F1800 ; un-retract
G1 X98.5 Y230 E0.7484 F1800 ; print line
G1 E-6 F2700 ; retract
G1 X138.5 Y210 F9000 ; move to start
G1 E6 F1800 ; un-retract
G1 X138.5 Y230 E0.7484 F1800 ; print line
G1 E-6 F2700 ; retract
G1 Z0.3 F1800 ; zHop
;
; print K-values
;
G1 X160.5 Y3 F9000 ; move to start
G1 Z0.2 F1800 ; zHop
G1 E6 F1800 ; un-retract
G1 X162.5 Y3 E0.0748 F1800 ; 0
G1 X162.5 Y5 E0.0748 F1800 ; 0
G1 X162.5 Y7 E0.0748 F1800 ; 0
G1 X160.5 Y7 E0.0748 F1800 ; 0
G1 X160.5 Y5 E0.0748 F1800 ; 0
G1 X160.5 Y3 E0.0748 F1800 ; 0
G1 E-6 F2700 ; retract
G1 Z0.3 F1800 ; zHop
G1 X160.5 Y13 F9000 ; move to start
G1 Z0.2 F1800 ; zHop
G1 E6 F1800 ; un-retract
G1 X162.5 Y13 E0.0748 F1800 ; 0
G1 X162.5 Y15 E0.0748 F1800 ; 0
G1 X162.5 Y17 E0.0748 F1800 ; 0
G1 X160.5 Y17 E0.0748 F1800 ; 0
G1 X160.5 Y15 E0.0748 F1800 ; 0
G1 X160.5 Y13 E0.0748 F1800 ; 0
G1 E-6 F2700 ; retract
G1 X163.5 Y13 F9000 ; move to start
G1 E6 F1800 ; un-retract
G1 X163.5 Y13.4 E0.015 F1800 ; dot
G1 E-6 F2700 ; retract
G1 X164.5 Y13 F9000 ; move to start
G1 E6 F1800 ; un-retract
G1 X164.5 Y15 E0.0748 F1800 ; 1
G1 X164.5 Y17 E0.0748 F1800 ; 1
G1 E-6 F2700 ; retract
G1 Z0.3 F1800 ; zHop
G1 X160.5 Y23 F9000 ; move to start
G1 Z0.2 F1800 ; zHop
G1 E6 F1800 ; un-retract
G1 X162.5 Y23 E0.0748 F1800 ; 0
G1 X162.5 Y25 E0.0748 F1800 ; 0
G1 X162.5 Y27 E0.0748 F1800 ; 0
G1 X160.5 Y27 E0.0748 F1800 ; 0
G1 X160.5 Y25 E0.0748 F1800 ; 0
G1 X160.5 Y23 E0.0748 F1800 ; 0
G1 E-6 F2700 ; retract
G1 X163.5 Y23 F9000 ; move to start
G1 E6 F1800 ; un-retract
G1 X163.5 Y23.4 E0.015 F1800 ; dot
G1 E-6 F2700 ; retract
G1 X164.5 Y23 F9000 ; move to start
G1 E6 F1800 ; un-retract
G1 X164.5 Y25 F9000 ; move to start
G1 X164.5 Y27 F9000 ; move to start
G1 X166.5 Y27 E0.0748 F1800 ; 2
G1 X166.5 Y25 E0.0748 F1800 ; 2
G1 X164.5 Y25 E0.0748 F1800 ; 2
G1 X164.5 Y23 E0.0748 F1800 ; 2
G1 X166.5 Y23 E0.0748 F1800 ; 2
G1 E-6 F2700 ; retract
G1 Z0.3 F1800 ; zHop
G1 X160.5 Y33 F9000 ; move to start
G1 Z0.2 F1800 ; zHop
G1 E6 F1800 ; un-retract
G1 X162.5 Y33 E0.0748 F1800 ; 0
G1 X162.5 Y35 E0.0748 F1800 ; 0
G1 X162.5 Y37 E0.0748 F1800 ; 0
G1 X160.5 Y37 E0.0748 F1800 ; 0
G1 X160.5 Y35 E0.0748 F1800 ; 0
G1 X160.5 Y33 E0.0748 F1800 ; 0
G1 E-6 F2700 ; retract
G1 X163.5 Y33 F9000 ; move to start
G1 E6 F1800 ; un-retract
G1 X163.5 Y33.4 E0.015 F1800 ; dot
G1 E-6 F2700 ; retract
G1 X164.5 Y33 F9000 ; move to start
G1 E6 F1800 ; un-retract
G1 X164.5 Y35 F9000 ; move to start
G1 X164.5 Y37 F9000 ; move to start
G1 X166.5 Y37 E0.0748 F1800 ; 3
G1 X166.5 Y35 E0.0748 F1800 ; 3
G1 X166.5 Y33 E0.0748 F1800 ; 3
G1 X164.5 Y33 E0.0748 F1800 ; 3
G1 X164.5 Y35 F9000 ; move to start
G1 X166.5 Y35 E0.0748 F1800 ; 3
G1 E-6 F2700 ; retract
G1 Z0.3 F1800 ; zHop
G1 X160.5 Y43 F9000 ; move to start
G1 Z0.2 F1800 ; zHop
G1 E6 F1800 ; un-retract
G1 X162.5 Y43 E0.0748 F1800 ; 0
G1 X162.5 Y45 E0.0748 F1800 ; 0
G1 X162.5 Y47 E0.0748 F1800 ; 0
G1 X160.5 Y47 E0.0748 F1800 ; 0
G1 X160.5 Y45 E0.0748 F1800 ; 0
G1 X160.5 Y43 E0.0748 F1800 ; 0
G1 E-6 F2700 ; retract
G1 X163.5 Y43 F9000 ; move to start
G1 E6 F1800 ; un-retract
G1 X163.5 Y43.4 E0.015 F1800 ; dot
G1 E-6 F2700 ; retract
G1 X164.5 Y43 F9000 ; move to start
G1 E6 F1800 ; un-retract
G1 X164.5 Y45 F9000 ; move to start
G1 X164.5 Y47 F9000 ; move to start
G1 X164.5 Y45 E0.0748 F1800 ; 4
G1 X166.5 Y45 E0.0748 F1800 ; 4
G1 X166.5 Y47 F9000 ; move to start
G1 X166.5 Y45 E0.0748 F1800 ; 4
G1 X166.5 Y43 E0.0748 F1800 ; 4
G1 E-6 F2700 ; retract
G1 Z0.3 F1800 ; zHop
G1 X160.5 Y53 F9000 ; move to start
G1 Z0.2 F1800 ; zHop
G1 E6 F1800 ; un-retract
G1 X162.5 Y53 E0.0748 F1800 ; 0
G1 X162.5 Y55 E0.0748 F1800 ; 0
G1 X162.5 Y57 E0.0748 F1800 ; 0
G1 X160.5 Y57 E0.0748 F1800 ; 0
G1 X160.5 Y55 E0.0748 F1800 ; 0
G1 X160.5 Y53 E0.0748 F1800 ; 0
G1 E-6 F2700 ; retract
G1 X163.5 Y53 F9000 ; move to start
G1 E6 F1800 ; un-retract
G1 X163.5 Y53.4 E0.015 F1800 ; dot
G1 E-6 F2700 ; retract
G1 X164.5 Y53 F9000 ; move to start
G1 E6 F1800 ; un-retract
G1 X166.5 Y53 E0.0748 F1800 ; 5
G1 X166.5 Y55 E0.0748 F1800 ; 5
G1 X164.5 Y55 E0.0748 F1800 ; 5
G1 X164.5 Y57 E0.0748 F1800 ; 5
G1 X166.5 Y57 E0.0748 F1800 ; 5
G1 E-6 F2700 ; retract
G1 Z0.3 F1800 ; zHop
G1 X160.5 Y63 F9000 ; move to start
G1 Z0.2 F1800 ; zHop
G1 E6 F1800 ; un-retract
G1 X162.5 Y63 E0.0748 F1800 ; 0
G1 X162.5 Y65 E0.0748 F1800 ; 0
G1 X162.5 Y67 E0.0748 F1800 ; 0
G1 X160.5 Y67 E0.0748 F1800 ; 0
G1 X160.5 Y65 E0.0748 F1800 ; 0
G1 X160.5 Y63 E0.0748 F1800 ; 0
G1 E-6 F2700 ; retract
G1 X163.5 Y63 F9000 ; move to start
G1 E6 F1800 ; un-retract
G1 X163.5 Y63.4 E0.015 F1800 ; dot
G1 E-6 F2700 ; retract
G1 X164.5 Y63 F9000 ; move to start
G1 E6 F1800 ; un-retract
G1 X164.5 Y65 F9000 ; move to start
G1 X166.5 Y65 E0.0748 F1800 ; 6
G1 X166.5 Y63 E0.0748 F1800 ; 6
G1 X164.5 Y63 E0.0748 F1800 ; 6
G1 X164.5 Y65 E0.0748 F1800 ; 6
G1 X164.5 Y67 E0.0748 F1800 ; 6
G1 X166.5 Y67 E0.0748 F1800 ; 6
G1 E-6 F2700 ; retract
G1 Z0.3 F1800 ; zHop
G1 X160.5 Y73 F9000 ; move to start
G1 Z0.2 F1800 ; zHop
G1 E6 F1800 ; un-retract
G1 X162.5 Y73 E0.0748 F1800 ; 0
G1 X162.5 Y75 E0.0748 F1800 ; 0
G1 X162.5 Y77 E0.0748 F1800 ; 0
G1 X160.5 Y77 E0.0748 F1800 ; 0
G1 X160.5 Y75 E0.0748 F1800 ; 0
G1 X160.5 Y73 E0.0748 F1800 ; 0
G1 E-6 F2700 ; retract
G1 X163.5 Y73 F9000 ; move to start
G1 E6 F1800 ; un-retract
G1 X163.5 Y73.4 E0.015 F1800 ; dot
G1 E-6 F2700 ; retract
G1 X164.5 Y73 F9000 ; move to start
G1 E6 F1800 ; un-retract
G1 X164.5 Y75 F9000 ; move to start
G1 X164.5 Y77 F9000 ; move to start
G1 X166.5 Y77 E0.0748 F1800 ; 7
G1 X166.5 Y75 E0.0748 F1800 ; 7
G1 X166.5 Y73 E0.0748 F1800 ; 7
G1 E-6 F2700 ; retract
G1 Z0.3 F1800 ; zHop
G1 X160.5 Y83 F9000 ; move to start
G1 Z0.2 F1800 ; zHop
G1 E6 F1800 ; un-retract
G1 X162.5 Y83 E0.0748 F1800 ; 0
G1 X162.5 Y85 E0.0748 F1800 ; 0
G1 X162.5 Y87 E0.0748 F1800 ; 0
G1 X160.5 Y87 E0.0748 F1800 ; 0
G1 X160.5 Y85 E0.0748 F1800 ; 0
G1 X160.5 Y83 E0.0748 F1800 ; 0
G1 E-6 F2700 ; retract
G1 X163.5 Y83 F9000 ; move to start
G1 E6 F1800 ; un-retract
G1 X163.5 Y83.4 E0.015 F1800 ; dot
G1 E-6 F2700 ; retract
G1 X164.5 Y83 F9000 ; move to start
G1 E6 F1800 ; un-retract
G1 X164.5 Y85 F9000 ; move to start
G1 X166.5 Y85 E0.0748 F1800 ; 8
G1 X166.5 Y83 E0.0748 F1800 ; 8
G1 X164.5 Y83 E0.0748 F1800 ; 8
G1 X164.5 Y85 E0.0748 F1800 ; 8
G1 X164.5 Y87 E0.0748 F1800 ; 8
G1 X166.5 Y87 E0.0748 F1800 ; 8
G1 X166.5 Y85 E0.0748 F1800 ; 8
G1 E-6 F2700 ; retract
G1 Z0.3 F1800 ; zHop
G1 X160.5 Y93 F9000 ; move to start
G1 Z0.2 F1800 ; zHop
G1 E6 F1800 ; un-retract
G1 X162.5 Y93 E0.0748 F1800 ; 0
G1 X162.5 Y95 E0.0748 F1800 ; 0
G1 X162.5 Y97 E0.0748 F1800 ; 0
G1 X160.5 Y97 E0.0748 F1800 ; 0
G1 X160.5 Y95 E0.0748 F1800 ; 0
G1 X160.5 Y93 E0.0748 F1800 ; 0
G1 E-6 F2700 ; retract
G1 X163.5 Y93 F9000 ; move to start
G1 E6 F1800 ; un-retract
G1 X163.5 Y93.4 E0.015 F1800 ; dot
G1 E-6 F2700 ; retract
G1 X164.5 Y93 F9000 ; move to start
G1 E6 F1800 ; un-retract
G1 X166.5 Y93 E0.0748 F1800 ; 9
G1 X166.5 Y95 E0.0748 F1800 ; 9
G1 X164.5 Y95 E0.0748 F1800 ; 9
G1 X164.5 Y97 E0.0748 F1800 ; 9
G1 X166.5 Y97 E0.0748 F1800 ; 9
G1 X166.5 Y95 E0.0748 F1800 ; 9
G1 E-6 F2700 ; retract
G1 Z0.3 F1800 ; zHop
G1 X160.5 Y103 F9000 ; move to start
G1 Z0.2 F1800 ; zHop
G1 E6 F1800 ; un-retract
G1 X160.5 Y105 E0.0748 F1800 ; 1
G1 X160.5 Y107 E0.0748 F1800 ; 1
G1 E-6 F2700 ; retract
G1 Z0.3 F1800 ; zHop
G1 X160.5 Y113 F9000 ; move to start
G1 Z0.2 F1800 ; zHop
G1 E6 F1800 ; un-retract
G1 X160.5 Y115 E0.0748 F1800 ; 1
G1 X160.5 Y117 E0.0748 F1800 ; 1
G1 E-6 F2700 ; retract
G1 X161.5 Y113 F9000 ; move to start
G1 E6 F1800 ; un-retract
G1 X161.5 Y113.4 E0.015 F1800 ; dot
G1 E-6 F2700 ; retract
G1 X162.5 Y113 F9000 ; move to start
G1 E6 F1800 ; un-retract
G1 X162.5 Y115 E0.0748 F1800 ; 1
G1 X162.5 Y117 E0.0748 F1800 ; 1
G1 E-6 F2700 ; retract
G1 Z0.3 F1800 ; zHop
G1 X160.5 Y123 F9000 ; move to start
G1 Z0.2 F1800 ; zHop
G1 E6 F1800 ; un-retract
G1 X160.5 Y125 E0.0748 F1800 ; 1
G1 X160.5 Y127 E0.0748 F1800 ; 1
G1 E-6 F2700 ; retract
G1 X161.5 Y123 F9000 ; move to start
G1 E6 F1800 ; un-retract
G1 X161.5 Y123.4 E0.015 F1800 ; dot
G1 E-6 F2700 ; retract
G1 X162.5 Y123 F9000 ; move to start
G1 E6 F1800 ; un-retract
G1 X162.5 Y125 F9000 ; move to start
G1 X162.5 Y127 F9000 ; move to start
G1 X164.5 Y127 E0.0748 F1800 ; 2
G1 X164.5 Y125 E0.0748 F1800 ; 2
G1 X162.5 Y125 E0.0748 F1800 ; 2
G1 X162.5 Y123 E0.0748 F1800 ; 2
G1 X164.5 Y123 E0.0748 F1800 ; 2
G1 E-6 F2700 ; retract
G1 Z0.3 F1800 ; zHop
G1 X160.5 Y133 F9000 ; move to start
G1 Z0.2 F1800 ; zHop
G1 E6 F1800 ; un-retract
G1 X160.5 Y135 E0.0748 F1800 ; 1
G1 X160.5 Y137 E0.0748 F1800 ; 1
G1 E-6 F2700 ; retract
G1 X161.5 Y133 F9000 ; move to start
G1 E6 F1800 ; un-retract
G1 X161.5 Y133.4 E0.015 F1800 ; dot
G1 E-6 F2700 ; retract
G1 X162.5 Y133 F9000 ; move to start
G1 E6 F1800 ; un-retract
G1 X162.5 Y135 F9000 ; move to start
G1 X162.5 Y137 F9000 ; move to start
G1 X164.5 Y137 E0.0748 F1800 ; 3
G1 X164.5 Y135 E0.0748 F1800 ; 3
G1 X164.5 Y133 E0.0748 F1800 ; 3
G1 X162.5 Y133 E0.0748 F1800 ; 3
G1 X162.5 Y135 F9000 ; move to start
G1 X164.5 Y135 E0.0748 F1800 ; 3
G1 E-6 F2700 ; retract
G1 Z0.3 F1800 ; zHop
G1 X160.5 Y143 F9000 ; move to start
G1 Z0.2 F1800 ; zHop
G1 E6 F1800 ; un-retract
G1 X160.5 Y145 E0.0748 F1800 ; 1
G1 X160.5 Y147 E0.0748 F1800 ; 1
G1 E-6 F2700 ; retract
G1 X161.5 Y143 F9000 ; move to start
G1 E6 F1800 ; un-retract
G1 X161.5 Y143.4 E0.015 F1800 ; dot
G1 E-6 F2700 ; retract
G1 X162.5 Y143 F9000 ; move to start
G1 E6 F1800 ; un-retract
G1 X162.5 Y145 F9000 ; move to start
G1 X162.5 Y147 F9000 ; move to start
G1 X162.5 Y145 E0.0748 F1800 ; 4
G1 X164.5 Y145 E0.0748 F1800 ; 4
G1 X164.5 Y147 F9000 ; move to start
G1 X164.5 Y145 E0.0748 F1800 ; 4
G1 X164.5 Y143 E0.0748 F1800 ; 4
G1 E-6 F2700 ; retract
G1 Z0.3 F1800 ; zHop
G1 X160.5 Y153 F9000 ; move to start
G1 Z0.2 F1800 ; zHop
G1 E6 F1800 ; un-retract
G1 X160.5 Y155 E0.0748 F1800 ; 1
G1 X160.5 Y157 E0.0748 F1800 ; 1
G1 E-6 F2700 ; retract
G1 X161.5 Y153 F9000 ; move to start
G1 E6 F1800 ; un-retract
G1 X161.5 Y153.4 E0.015 F1800 ; dot
G1 E-6 F2700 ; retract
G1 X162.5 Y153 F9000 ; move to start
G1 E6 F1800 ; un-retract
G1 X164.5 Y153 E0.0748 F1800 ; 5
G1 X164.5 Y155 E0.0748 F1800 ; 5
G1 X162.5 Y155 E0.0748 F1800 ; 5
G1 X162.5 Y157 E0.0748 F1800 ; 5
G1 X164.5 Y157 E0.0748 F1800 ; 5
G1 E-6 F2700 ; retract
G1 Z0.3 F1800 ; zHop
G1 X160.5 Y163 F9000 ; move to start
G1 Z0.2 F1800 ; zHop
G1 E6 F1800 ; un-retract
G1 X160.5 Y165 E0.0748 F1800 ; 1
G1 X160.5 Y167 E0.0748 F1800 ; 1
G1 E-6 F2700 ; retract
G1 X161.5 Y163 F9000 ; move to start
G1 E6 F1800 ; un-retract
G1 X161.5 Y163.4 E0.015 F1800 ; dot
G1 E-6 F2700 ; retract
G1 X162.5 Y163 F9000 ; move to start
G1 E6 F1800 ; un-retract
G1 X162.5 Y165 F9000 ; move to start
G1 X164.5 Y165 E0.0748 F1800 ; 6
G1 X164.5 Y163 E0.0748 F1800 ; 6
G1 X162.5 Y163 E0.0748 F1800 ; 6
G1 X162.5 Y165 E0.0748 F1800 ; 6
G1 X162.5 Y167 E0.0748 F1800 ; 6
G1 X164.5 Y167 E0.0748 F1800 ; 6
G1 E-6 F2700 ; retract
G1 Z0.3 F1800 ; zHop
G1 X160.5 Y173 F9000 ; move to start
G1 Z0.2 F1800 ; zHop
G1 E6 F1800 ; un-retract
G1 X160.5 Y175 E0.0748 F1800 ; 1
G1 X160.5 Y177 E0.0748 F1800 ; 1
G1 E-6 F2700 ; retract
G1 X161.5 Y173 F9000 ; move to start
G1 E6 F1800 ; un-retract
G1 X161.5 Y173.4 E0.015 F1800 ; dot
G1 E-6 F2700 ; retract
G1 X162.5 Y173 F9000 ; move to start
G1 E6 F1800 ; un-retract
G1 X162.5 Y175 F9000 ; move to start
G1 X162.5 Y177 F9000 ; move to start
G1 X164.5 Y177 E0.0748 F1800 ; 7
G1 X164.5 Y175 E0.0748 F1800 ; 7
G1 X164.5 Y173 E0.0748 F1800 ; 7
G1 E-6 F2700 ; retract
G1 Z0.3 F1800 ; zHop
G1 X160.5 Y183 F9000 ; move to start
G1 Z0.2 F1800 ; zHop
G1 E6 F1800 ; un-retract
G1 X160.5 Y185 E0.0748 F1800 ; 1
G1 X160.5 Y187 E0.0748 F1800 ; 1
G1 E-6 F2700 ; retract
G1 X161.5 Y183 F9000 ; move to start
G1 E6 F1800 ; un-retract
G1 X161.5 Y183.4 E0.015 F1800 ; dot
G1 E-6 F2700 ; retract
G1 X162.5 Y183 F9000 ; move to start
G1 E6 F1800 ; un-retract
G1 X162.5 Y185 F9000 ; move to start
G1 X164.5 Y185 E0.0748 F1800 ; 8
G1 X164.5 Y183 E0.0748 F1800 ; 8
G1 X162.5 Y183 E0.0748 F1800 ; 8
G1 X162.5 Y185 E0.0748 F1800 ; 8
G1 X162.5 Y187 E0.0748 F1800 ; 8
G1 X164.5 Y187 E0.0748 F1800 ; 8
G1 X164.5 Y185 E0.0748 F1800 ; 8
G1 E-6 F2700 ; retract
G1 Z0.3 F1800 ; zHop
G1 X160.5 Y193 F9000 ; move to start
G1 Z0.2 F1800 ; zHop
G1 E6 F1800 ; un-retract
G1 X160.5 Y195 E0.0748 F1800 ; 1
G1 X160.5 Y197 E0.0748 F1800 ; 1
G1 E-6 F2700 ; retract
G1 X161.5 Y193 F9000 ; move to start
G1 E6 F1800 ; un-retract
G1 X161.5 Y193.4 E0.015 F1800 ; dot
G1 E-6 F2700 ; retract
G1 X162.5 Y193 F9000 ; move to start
G1 E6 F1800 ; un-retract
G1 X164.5 Y193 E0.0748 F1800 ; 9
G1 X164.5 Y195 E0.0748 F1800 ; 9
G1 X162.5 Y195 E0.0748 F1800 ; 9
G1 X162.5 Y197 E0.0748 F1800 ; 9
G1 X164.5 Y197 E0.0748 F1800 ; 9
G1 X164.5 Y195 E0.0748 F1800 ; 9
G1 E-6 F2700 ; retract
G1 Z0.3 F1800 ; zHop
;
; FINISH
;
M107 ; Turn off fan
M400 ; Finish moving
M104 S0 ; Turn off hotend
M140 S0 ; Turn off bed
G1 Z30 X235 Y235 F9000 ; Move away from the print
M84 ; Disable motors
M501 ; Load settings from EEPROM
;