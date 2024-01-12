G90 ; Use absoulte coordinates
M83 ; Extruder relative mode

M900 K0.07 ; Set Linear Advance K Factor

M117 prepare Printer

M104 S165 ; set extruder temp
M140 S[first_layer_bed_temperature] ; set bed temp
M190 S[first_layer_bed_temperature] ; wait for bed temp

G28 ; Home all axes

;G29 A ; Unified bed-level
;G29 L0 ; Load Mesh Slot 0
;G29 J3 ; Probe 9 points to check mesh
M420 S1 ; initialize bed leveling
;G29 ; bed leveling

M117 heating up

M600 ; Filament Change - because of bug in Sv06 firmware

G1 Z5 F150 ; lower nozzle
G1 X0.1 Y10 Z5.0 F5000.0 ; Move to start position
G1 Z1.0 F150; Lower to ready

M104 S[first_layer_temperature] ; set extruder temp
M109 S[first_layer_temperature] ; wait for extruder temp

G4 S2 ; wait 2 seconds

M117 Printing Purge Lines

G1 Z0.3 F150 ; Move lower
G1 X0.1 Y150 Z0.3 F1500.0 E15 ; Draw the first line
G1 X0.4 Y150 Z0.3 F5000.0 ; Move to side a little
G1 X0.4 Y15 Z0.3 F1500.0 E30 ; Draw the second line

M117 Print Start…

G1 Z0.6 F150 ; Lift A BIT
G92 E0.0 ; Reset Extruder
M83 ; Extruder relative mode
G1 Z1.0 F150 ; Move Z Axis up little to prevent scratching of Heat Bed
G4 S2 ; wait 02 seconds