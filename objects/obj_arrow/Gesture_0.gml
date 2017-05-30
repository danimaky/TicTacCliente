/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 6AE236A5
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)event_inherited();$(13_10)global.serverselect=global.serverselect+val;$(13_10)if(val==-1){$(13_10)	if(global.serverselect<0){$(13_10)		//se le asigna el ultimo$(13_10)		global.serverselect=ds_list_size(global.listaserver)-1;$(13_10)		with(obj_serverinfo){$(13_10)			instance_destroy()$(13_10)		}$(13_10)		var serverinfo = instance_create_depth(0,0,1,obj_serverinfo);$(13_10)		serverinfo.color=c_black;$(13_10)		var vale=global.serverselect+1;$(13_10)		serverinfo.tipo=1;$(13_10)		serverinfo.message="SERVIDOR #"+string(vale)$(13_10)	}else{$(13_10)		//no pasa nada	nomas cambiar$(13_10)		with(obj_serverinfo){$(13_10)			instance_destroy()$(13_10)		}$(13_10)		var serverinfo = instance_create_depth(0,0,1,obj_serverinfo);$(13_10)		serverinfo.color=c_black;$(13_10)		var vale=global.serverselect+1;$(13_10)		serverinfo.tipo=1;$(13_10)		serverinfo.message="SERVIDOR #"+string(vale)$(13_10)	}$(13_10)}else{$(13_10)	if(global.serverselect==ds_list_size(global.listaserver)){$(13_10)		//se le asigna el primero$(13_10)		global.serverselect=0;$(13_10)		with(obj_serverinfo){$(13_10)			instance_destroy()$(13_10)		}$(13_10)		var serverinfo = instance_create_depth(0,0,1,obj_serverinfo);$(13_10)		serverinfo.color=c_black;$(13_10)		var vale=global.serverselect+1;$(13_10)		serverinfo.tipo=1;$(13_10)		serverinfo.message="SERVIDOR #"+string(vale);$(13_10)	}else{$(13_10)		//nomas cambiar$(13_10)		with(obj_serverinfo){$(13_10)			instance_destroy()$(13_10)		}$(13_10)		var serverinfo = instance_create_depth(0,0,1,obj_serverinfo);$(13_10)		serverinfo.color=c_black;$(13_10)		var vale=global.serverselect+1;$(13_10)		serverinfo.tipo=1;$(13_10)		serverinfo.message="SERVIDOR #"+string(vale);$(13_10)	}$(13_10)}"
/// @description Execute Code
event_inherited();
global.serverselect=global.serverselect+val;
if(val==-1){
	if(global.serverselect<0){
		//se le asigna el ultimo
		global.serverselect=ds_list_size(global.listaserver)-1;
		with(obj_serverinfo){
			instance_destroy()
		}
		var serverinfo = instance_create_depth(0,0,1,obj_serverinfo);
		serverinfo.color=c_black;
		var vale=global.serverselect+1;
		serverinfo.tipo=1;
		serverinfo.message="SERVIDOR #"+string(vale)
	}else{
		//no pasa nada	nomas cambiar
		with(obj_serverinfo){
			instance_destroy()
		}
		var serverinfo = instance_create_depth(0,0,1,obj_serverinfo);
		serverinfo.color=c_black;
		var vale=global.serverselect+1;
		serverinfo.tipo=1;
		serverinfo.message="SERVIDOR #"+string(vale)
	}
}else{
	if(global.serverselect==ds_list_size(global.listaserver)){
		//se le asigna el primero
		global.serverselect=0;
		with(obj_serverinfo){
			instance_destroy()
		}
		var serverinfo = instance_create_depth(0,0,1,obj_serverinfo);
		serverinfo.color=c_black;
		var vale=global.serverselect+1;
		serverinfo.tipo=1;
		serverinfo.message="SERVIDOR #"+string(vale);
	}else{
		//nomas cambiar
		with(obj_serverinfo){
			instance_destroy()
		}
		var serverinfo = instance_create_depth(0,0,1,obj_serverinfo);
		serverinfo.color=c_black;
		var vale=global.serverselect+1;
		serverinfo.tipo=1;
		serverinfo.message="SERVIDOR #"+string(vale);
	}
}