/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 0209D181
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)if(global.juego&&global.turno){$(13_10)	if(sprite_index==spr_caja){$(13_10)		if(global.simbolo=="O"){$(13_10)			sprite_index=spr_cajaO;$(13_10)			buffer_seek(global.buffer,buffer_seek_start,0);$(13_10)			//tipo de msj$(13_10)			buffer_write(global.buffer,buffer_u8,5);$(13_10)			//id de sala$(13_10)			with(obj_controller){$(13_10)			buffer_write(global.buffer,buffer_u8,sala);}$(13_10)			//opcion O$(13_10)			buffer_write(global.buffer,buffer_u8,0);$(13_10)			//id de caja$(13_10)			buffer_write(global.buffer,buffer_u8,ide);$(13_10)			with(obj_controller){$(13_10)			network_send_packet(socket,global.buffer,buffer_tell(global.buffer));$(13_10)			}$(13_10)			global.turno=false;$(13_10)		}else{$(13_10)			sprite_index=spr_cajaX;$(13_10)			buffer_seek(global.buffer,buffer_seek_start,0);$(13_10)			//tipo de msj$(13_10)			buffer_write(global.buffer,buffer_u8,5);$(13_10)			//id de sala$(13_10)			with(obj_controller){$(13_10)			buffer_write(global.buffer,buffer_u8,sala);}$(13_10)			//opcion X$(13_10)			buffer_write(global.buffer,buffer_u8,1);$(13_10)			//id de caja$(13_10)			buffer_write(global.buffer,buffer_u8,ide);$(13_10)			with(obj_controller){$(13_10)			network_send_packet(socket,global.buffer,buffer_tell(global.buffer));$(13_10)			}$(13_10)			global.turno=false;$(13_10)		}$(13_10)	}$(13_10)}$(13_10)"
/// @description Execute Code
if(global.juego&&global.turno){
	if(sprite_index==spr_caja){
		if(global.simbolo=="O"){
			sprite_index=spr_cajaO;
			buffer_seek(global.buffer,buffer_seek_start,0);
			//tipo de msj
			buffer_write(global.buffer,buffer_u8,5);
			//id de sala
			with(obj_controller){
			buffer_write(global.buffer,buffer_u8,sala);}
			//opcion O
			buffer_write(global.buffer,buffer_u8,0);
			//id de caja
			buffer_write(global.buffer,buffer_u8,ide);
			with(obj_controller){
			network_send_packet(socket,global.buffer,buffer_tell(global.buffer));
			}
			global.turno=false;
		}else{
			sprite_index=spr_cajaX;
			buffer_seek(global.buffer,buffer_seek_start,0);
			//tipo de msj
			buffer_write(global.buffer,buffer_u8,5);
			//id de sala
			with(obj_controller){
			buffer_write(global.buffer,buffer_u8,sala);}
			//opcion X
			buffer_write(global.buffer,buffer_u8,1);
			//id de caja
			buffer_write(global.buffer,buffer_u8,ide);
			with(obj_controller){
			network_send_packet(socket,global.buffer,buffer_tell(global.buffer));
			}
			global.turno=false;
		}
	}
}