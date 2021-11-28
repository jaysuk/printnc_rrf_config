var tool_material=0
set var.tool_material={global.z_tp_height-global.tool_offset}			; Take away the tool height from the touch plate height and put it into 5 Z workplace co-ordinates
G10 L2 Z{global.z_material_height-var.tool_material}					; Take away the above offset from the material height and place in the live (1) Z workplace co-ordinates