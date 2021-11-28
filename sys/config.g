;############## General Preferences ##################

M555 P2															; Marlin style responses
G21																; Set dimensions to millimetres
G90                                            					; Send absolute coordinates...
M83                                            					; ...but relative extruder moves
M550 P"printNC"                             					; Set printer name
;M564 H0															; Allow movement without homing

;############## Network ##############################

M586 P0 S1                                     					; Enable HTTP
M586 P1 S0                                     					; Disable FTP
M586 P2 S0                                     					; Disable Telnet

;############## Axis Mapping #########################

M584 X0 Y1:2 Z3                               					; Set drive mapping

;############## Segmentation #########################

M669 K0 S1 T1 

;############## Drive Direction ######################

M569 P0 S0 T2.5:2.5:10:5                  						; Physical drive 0 goes forwards using default driver timings
M569 P1 S1 T2.5:2.5:10:5                  						; Physical drive 1 goes forwards using default driver timings
M569 P2 S1 T2.5:2.5:10:5                         				; Physical drive 2 goes forwards using default driver timings
M569 P3 S1 T2.5:2.5:10:5                                    	; Physical drive 3 goes forwards using default driver timings
M569 P4 S1 T2.5:2.5:10:5                                    	; Physical drive 4 goes forwards using default driver timings

;############## Steps Per mm #########################

M92 X320 Y320 Z800             								; Set steps per mm

;############## Speeds and Feeds #####################

M566 X40 Y50 Z50             									; Set maximum instantaneous speed changes (mm/min)
M203 X7500 Y6000.00 Z800.00          							; Set maximum speeds (mm/min)
M201 X500.00 Y500.00 Z200.00             						; Set accelerations (mm/s^2)
M906 X800 Y800 Z800 E800 I30                   					; Set motor currents (mA) and motor idle factor in per cent
M84 S30                                        					; Set idle timeout

;############## Axis Limits ##########################

M208 X0 Y0 Z0 S1                               					; Set axis minima
M208 X1000 Y600 Z130 S0                         				; Set axis maxima

;############## Endstops #############################

M574 X1 S1 P"!xstop"											
M574 Y1 S1 P"!ystop+!e0stop"
M574 Z2 S1 P"!zstop"

;############## Probe ################################

M558 P8 C"servo0" K0 F150										; Touch Probe
M558 P8 C"!e1stop" K1 F150										; Touch Plate

;############## CNC Settings #########################

M453 
M950 R0 C"e0heat+e1heat+e2heat" Q100 L6000:24000				; CNC mode and spindle settings

; Tools
M563 P0 R0 S"Spindle"                              				; define tool 0
;G10 P0 X0 Y0 Z0                                				; set tool 0 axis offsets
;G10 P0 R0 S0                                   				; set initial tool 0 active and standby temperatures to 0C

;############## Emergency Stop #######################

M950 J5 C"!e2stop"
M581 P5 T0 R0 S0

;############## Custom settings ######################

M552 S1															; Enable Network
M575 P1 S1 B57600												; Enable TFT Screen

;############## Variables ############################

M98 P"/sys/global_variables.g"