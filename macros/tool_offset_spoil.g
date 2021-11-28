var tool_tp=0
set var.tool_tp={global.z_tp_height-global.tool_offset}		; Take away the tool height from the touch plate height and put it into 5 Z workplace co-ordinates
G10 L2 Z{global.z_spoil_height-var.tool_tp}					; Take away the above offset from the spoilboard height and place in the live (1) Z workplace co-ordinates