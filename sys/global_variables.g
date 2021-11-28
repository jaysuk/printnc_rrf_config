if {!exists(global.tool_offset) || global.tool_offset=null}
	global tool_offset=0
else 
	set global.tool_offset=0
	
if {!exists(global.probe_size) || global.probe_size=null}
	global probe_size=2.9
else 
	set global.probe_size=1
	
if {!exists(global.XWP_position) || global.XWP_position=null}
	global XWP_position=0
else 
	set global.XWP_position=0

if {!exists(global.z_material_height) || global.z_material_height=null}
	global z_material_height=0
else 
	set global.z_material_height=0

if {!exists(global.z_spoil_height) || global.z_spoil_height=null}
	global z_spoil_height=0
else 
	set global.z_spoil_height=0

if {!exists(global.z_tp_height) || global.z_tp_height=null}
	global z_tp_height=0
else 
	set global.z_tp_height=0