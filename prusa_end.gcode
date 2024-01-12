G91 ; RELATIVE POSITIONING

G1 E-2 F2700 ; RETRACT A BIT

G1 E-2 Z0.2 F2400 ; RETRACT AND RAISE Z
G1 X5 Y5 F3000 ; WIPE OUT
G90 ; ABSOLUTE POSITIONING

M117 Print Complete!

G27 P2 P ; park head & present print
M220 S100 ; reset feed rate to 100 percent
M221 S100 ; reset flow rate to 100 percent

M104 S0 ; kill extruder temperature
M140 S0 ; kill bed temperature
M107 ; kill fan

M84 X Y E ; DISABLE ALL STEPPERS BUT Z
