; homex.g
; called to home the X axis
;
; generated by RepRapFirmware Configuration Tool v2.1.4 on Fri Apr 17 2020 09:23:07 GMT+0100 (British Summer Time)
G91               ; relative positioning
G1 H1 X-1000 F1800 ; move quickly to X axis endstop and stop there (first pass)
G1 X5 F6000    ; go back a few mm
G1 H1 X-1000 F360  ; move slowly to X axis endstop once more (second pass)
G1 X5 F1800
G90               ; absolute positioning

