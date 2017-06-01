/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 5BDF7AA4
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)var resultado=async_load[? "result"];$(13_10)global.listaserver=ds_list_create();$(13_10)global.serverselect=0;$(13_10)//codigo que saca las ip del string}$(13_10)var i=1;$(13_10)var cadena="";$(13_10)if(is_string(resultado)){$(13_10)while(i<=string_length(resultado)){$(13_10)	$(13_10)	if(string_char_at(resultado,i)!=";"){$(13_10)		cadena=cadena+string_char_at(resultado,i);$(13_10)	}else{$(13_10)		//show_debug_message("entro "+cadena);$(13_10)		ds_list_add(global.listaserver,cadena);$(13_10)		cadena="";$(13_10)	}$(13_10)	i++;$(13_10)}$(13_10)}else{$(13_10)	http_get("http://localhost/test.php");$(13_10)}$(13_10)$(13_10)if(ds_list_size(global.listaserver)==0){$(13_10)	with(obj_serverinfo){$(13_10)		instance_destroy()$(13_10)	}$(13_10)	serverinfo = instance_create_depth(0,0,1,obj_serverinfo);$(13_10)	serverinfo.color=c_red;$(13_10)	serverinfo.message="NO SE HAN ENCOTRADO SERVIDORES!";$(13_10)}else{$(13_10)	uparrow=instance_create_depth(96,192,-2,obj_arrow);$(13_10)	uparrow.val=1;$(13_10)	downarrow=instance_create_depth(128,288,-2,obj_arrow);$(13_10)	downarrow.image_angle=180;$(13_10)	downarrow.val=-1$(13_10)	global.serverselect=0;$(13_10)	with(obj_serverinfo){$(13_10)		instance_destroy()$(13_10)	}$(13_10)	with(obj_entrar){$(13_10)		instance_destroy()$(13_10)	}$(13_10)	serverinfo = instance_create_depth(0,0,1,obj_serverinfo);$(13_10)	serverinfo.color=c_black;$(13_10)	var val=global.serverselect+1;$(13_10)	serverinfo.tipo=1;$(13_10)	serverinfo.message="SERVIDOR #"+string(val);$(13_10)	instance_create_depth(400,220,-3,obj_entrar);$(13_10)}"
/// @description Execute Code
var resultado=async_load[? "result"];
global.listaserver=ds_list_create();
global.serverselect=0;
//codigo que saca las ip del string}
var i=1;
var cadena="";
if(is_string(resultado)){
while(i<=string_length(resultado)){
	
	if(string_char_at(resultado,i)!=";"){
		cadena=cadena+string_char_at(resultado,i);
	}else{
		//show_debug_message("entro "+cadena);
		ds_list_add(global.listaserver,cadena);
		cadena="";
	}
	i++;
}
}else{
	http_get("http://localhost/test.php");
}

if(ds_list_size(global.listaserver)==0){
	with(obj_serverinfo){
		instance_destroy()
	}
	serverinfo = instance_create_depth(0,0,1,obj_serverinfo);
	serverinfo.color=c_red;
	serverinfo.message="NO SE HAN ENCOTRADO SERVIDORES!";
}else{
	uparrow=instance_create_depth(96,192,-2,obj_arrow);
	uparrow.val=1;
	downarrow=instance_create_depth(128,288,-2,obj_arrow);
	downarrow.image_angle=180;
	downarrow.val=-1
	global.serverselect=0;
	with(obj_serverinfo){
		instance_destroy()
	}
	with(obj_entrar){
		instance_destroy()
	}
	serverinfo = instance_create_depth(0,0,1,obj_serverinfo);
	serverinfo.color=c_black;
	var val=global.serverselect+1;
	serverinfo.tipo=1;
	serverinfo.message="SERVIDOR #"+string(val);
	instance_create_depth(400,220,-3,obj_entrar);
}