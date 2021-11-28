M558 F1500														; Set the initial probing speed
G38.2 Y600 P0 K0												; Probe the material as a first pass
G91																; Set the movements to relative
G1 Y-5															; Move 5mm away from the material
G90																; Set the movements to absolute
M558 F150														; Set the final probing speed
G38.2 Y600 P0 K0												; Probe the material again
M400															; Make sure all movement is complete
G10 L2 Y{move.axes[1].machinePosition+global.probe_size}		; Record the stop position as the workpiece co-ordinate in Y
M400															; Make sure all data recording is complete
G91																; Set the movements to relative
G1 Y-5															; Move 5mm away from the material
G90																; Set the movements to absolute