var y_first_measurement = 0
var y_second_measurement = 0
var y_length = 0
var x_first_measurement = 0
var x_second_measurement = 0
var x_length = 0
var y_over_x = 0
var y_x_tan_rads = 0
var y_x_tan_deg = 0

M291 P"Put the probe on the left hand side of the bottom edge" S2 X1 Y1 Z1		; Pop up box asking for operator input
M558 F1500																		; Set the initial probing speed
G38.2 Y600 P0																	; Probe the material as a first pass
G1 Y{move.axes[1].machinePosition-5}											; Move 5mm away from the material
M558 F150																		; Set the final probing speed
G38.2 Y600 P0																	; Probe the material again
M400																			; Make sure all movement is complete
set var.y_first_measurement=move.axes[1].machinePosition						; Record the stop position y_first_measurement
set var.x_first_measurement=move.axes[0].machinePosition						; Record the stop position x_first_measurement
M400																			; Make sure all data recording is complete
G1 Y{move.axes[1].machinePosition-5}											; Move 5mm away from the material
G1 X{move.axes[0].machinePosition+50}											; Move along the workpiece in X
M558 F1500																		; Set the initial probing speed
G38.2 Y600 P0																	; Probe the material as a first pass
G1 Y{move.axes[1].machinePosition-5}											; Move 5mm away from the material
M558 F150																		; Set the final probing speed
G38.2 Y600 P0																	; Probe the material again
M400																			; Make sure all movement is complete
set var.y_second_measurement=move.axes[1].machinePosition						; Record the stop position y_second_measurement
set var.x_second_measurement=move.axes[0].machinePosition						; Record the stop position x_second_measurement
M400																			; Make sure all data recording is complete
set var.y_length={var.y_second_measurement-var.y_first_measurement}
set var.x_length={var.x_second_measurement-var.x_first_measurement}
set var.y_over_x={var.y_length/var.x_length}
set var.y_x_tan_rads=atan(var.y_over_x)
set var.var y_x_tan_rads = degrees{var.y_x_tan_rads}
G68 A0 B0 R{var.y_x_tan_rads}