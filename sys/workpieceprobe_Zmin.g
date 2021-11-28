M291 P"Put the probe over the workpiece" S2 X1 Y1 Z1				; Pop up box asking for operator input
M558 F1500															; Set the initial probing speed
G38.2 Z-200 P0 K0													; Probe the top of the material
G91 																; Set the movement to relative
G1 Z5																; Move back up 5mm
G90																	; Set the movement to absolute
M558 F150															; Set the second probing speed
G38.2 Z-200 P0 K0													; Probe the top of the material again
M400																; Make sure the movement is complete
set global.z_material_height={move.axes[2].machinePosition}			; Record the material height in the 9 Z workplace coordinate
M400																; Make sure the recording is complete
G91 																; Set the movement to relative
G1 Z10																; Move back up 10mm
G90																	; Set the movement to absolute
M291 P"Put the probe over the spoilboard" S2 X1 Y1 Z1				; Pop up box asking for operator input
M558 F1500															; Set the initial probing speed
G38.2 Z-200 P0 K0													; Probe the top of the spoilboard
G91 																; Set the movement to relative
G1 Z5																; Move back up 5mm
G90																	; Set the movement to absolute
M558 F150															; Set the second probing speed
G38.2 Z-200 P0 K0													; Probe the top of the material again
M400																; Make sure the movement is complete
set global.z_spoil_height={move.axes[2].machinePosition}			; Record the spoilboard height in the 8 Z workplace coordinate
M400																; Make sure the recording is complete
G91 																; Set the movement to relative
G1 Z10																; Move back up 10mm
G90																	; Set the movement to absolute
M291 P"Put the probe over the tool block" S2 X1 Y1 Z1				; Pop up box asking for operator input
M558 F1500															; Set the initial probing speed
G38.2 Z-200 P0 K0													; Probe the top of the spoilboard
G91 																; Set the movement to relative
G1 Z5																; Move back up 5mm
G90																	; Set the movement to absolute
M558 F150															; Set the second probing speed
G38.2 Z-200 P0 K0													; Probe the top of the material again
M400																; Make sure the movement is complete
set global.z_tp_height={move.axes[2].machinePosition}				; Record the touch plate height in the 7 Z workplace coordinate
M400																; Make sure the recording is complete
G91 																; Set the movement to relative
G1 Z25																; Move back up 25mm
G90																	; Set the movement to absolute