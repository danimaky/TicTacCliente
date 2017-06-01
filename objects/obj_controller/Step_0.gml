/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 11E5EFF3
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)//update latencia cada segundo del room$(13_10)buffer_seek(global.buffer,buffer_seek_start,0);$(13_10)buffer_write(global.buffer,buffer_u8,1);$(13_10)buffer_write(global.buffer,buffer_u32,current_time);$(13_10)if(network_send_packet(socket,global.buffer,buffer_tell(global.buffer))=-1){$(13_10)	if(!os_is_network_connected()){$(13_10)		show_message_async("Error: Este equipo no tiene conexión a internet");$(13_10)		with(obj_box){$(13_10)			instance_destroy()$(13_10)		}$(13_10)		with(obj_cola){$(13_10)			instance_destroy()$(13_10)		}$(13_10)		with(obj_resultado){$(13_10)			instance_destroy()$(13_10)		}$(13_10)		room_goto(0);$(13_10)	}else{$(13_10)	show_message_async("Error: No hay conexión con el servidor");$(13_10)		with(obj_box){$(13_10)			instance_destroy()$(13_10)		}$(13_10)		with(obj_cola){$(13_10)			instance_destroy()$(13_10)		}$(13_10)		with(obj_resultado){$(13_10)			instance_destroy()$(13_10)		}$(13_10)		room_goto(0);}$(13_10)}"
/// @description Execute Code
//update latencia cada segundo del room
buffer_seek(global.buffer,buffer_seek_start,0);
buffer_write(global.buffer,buffer_u8,1);
buffer_write(global.buffer,buffer_u32,current_time);
if(network_send_packet(socket,global.buffer,buffer_tell(global.buffer))=-1){
	if(!os_is_network_connected()){
		show_message_async("Error: Este equipo no tiene conexión a internet");
		with(obj_box){
			instance_destroy()
		}
		with(obj_cola){
			instance_destroy()
		}
		with(obj_resultado){
			instance_destroy()
		}
		room_goto(0);
	}else{
	show_message_async("Error: No hay conexión con el servidor");
		with(obj_box){
			instance_destroy()
		}
		with(obj_cola){
			instance_destroy()
		}
		with(obj_resultado){
			instance_destroy()
		}
		room_goto(0);}
}