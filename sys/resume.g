; resume.g
; called before a print from SD card is resumed
;
; generated by RepRapFirmware Configuration Tool v2.1.4 on Fri Apr 17 2020 09:23:07 GMT+0100 (British Summer Time)
G1 R1 X0 Y0          		; Go back to the last cut move
M3 R1						; Restore the spindle speed from before the pause
G4 S10						; Wait for the spindle the get up to speed
G1 R1 X0 Y0 Z5 F6000 		; Go to 5mm above position of the last cut move