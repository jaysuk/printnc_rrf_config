M291 P"Have you attached the connector?" S2				; Pop up to remind the operator about the connector to be fitted to the tool
M558 F300												; Set the initial probing speed
G38.2 Z-200 P0 K1										; Probe the touch plate
G91 													; Set the movement to relative
G1 Z5													; Move up 5mm
G90														; Set the movement to absolute
M558 F150												; Set the second pass probing speed
G38.2 Z-200 P0 K1										; Probe the touch plate
M400													; Make sure the movement is complete
set global.tool_offset=move.axes[2].machinePosition		; Record the tool height in the 6 Z workplace coordinate
M400													; Make sure the data recording is complete
G91 													; Set the movement to relative
G1 Z5													; Move up 5mm
G90														; Set the movement to absolute