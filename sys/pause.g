; pause.g
; called when a print from SD card is paused
;
; generated by RepRapFirmware Configuration Tool v2.1.4 on Fri Apr 17 2020 09:23:07 GMT+0100 (British Summer Time)
G53 G1 Z125 F360     	; Lift Z by 5mm
M5						; Turn off the spindle
G4 S10					; Wait for the spindle to stop
G1 X0 Y0 F6000 			; Go to X=0 Y=0