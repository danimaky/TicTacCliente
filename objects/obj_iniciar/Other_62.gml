/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 09F6A394
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)var resultado=async_load[? "result"];$(13_10)show_debug_message(string(resultado));$(13_10)//show_message_async(string(resultado));$(13_10)with(obj_serverinfo){instance_destroy();}$(13_10)is_string(resultado){$(13_10)switch(resultado){$(13_10)	case "0":$(13_10)		//usuario invalido$(13_10)		show_message("Datos de usuario inválidos!");$(13_10)	break;$(13_10)	case "1":$(13_10)		//usuario en conexion$(13_10)		show_message("El usuario ingresado ya está conectado!");$(13_10)	break;$(13_10)	case "2":$(13_10)		global.nickname=campousuario.nickname;$(13_10)		room_goto_next();$(13_10)	break;$(13_10)}$(13_10)if(resultado!="0" and resultado!="1" and resultado!="2"){$(13_10)	show_message("Error del servidor de usuarios!");$(13_10)}$(13_10)}"
/// @description Execute Code
var resultado=async_load[? "result"];
show_debug_message(string(resultado));
//show_message_async(string(resultado));
with(obj_serverinfo){instance_destroy();}
is_string(resultado){
switch(resultado){
	case "0":
		//usuario invalido
		show_message("Datos de usuario inválidos!");
	break;
	case "1":
		//usuario en conexion
		show_message("El usuario ingresado ya está conectado!");
	break;
	case "2":
		global.nickname=campousuario.nickname;
		room_goto_next();
	break;
}
if(resultado!="0" and resultado!="1" and resultado!="2"){
	show_message("Error del servidor de usuarios!");
}
}