/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 26C7E60B
/// @DnDArgument : "code" "/// src_received_buffer(buffer)$(13_10)var buffer=argument[0];$(13_10)var msgId=buffer_read(buffer,buffer_u8);$(13_10)switch(msgId){$(13_10)	case 1://solicitud del ping$(13_10)		var tiempoenviado=buffer_read(buffer,buffer_u32);$(13_10)		latency=current_time-tiempoenviado;$(13_10)	break;$(13_10)	case 2://Esperar a la cola$(13_10)		with(obj_cola){$(13_10)			instance_destroy()$(13_10)		}$(13_10)		global.juego=false;$(13_10)		global.vcola=instance_create_depth(192,128,(-1),obj_cola);$(13_10)	break;$(13_10)	case 3://salir de cola$(13_10)		if(buffer_read(buffer,buffer_u8)==0){$(13_10)			global.simbolo="O"$(13_10)			global.turno=true;$(13_10)		}else{$(13_10)			global.simbolo="X"$(13_10)			global.turno=false;$(13_10)		}$(13_10)		sala=buffer_read(buffer,buffer_u8);$(13_10)		global.adversario=buffer_read(buffer,buffer_string);$(13_10)		global.juego=true;$(13_10)		with(obj_cola){$(13_10)			instance_destroy()$(13_10)		}$(13_10)	break;$(13_10)	//contrincante desconectado victoria$(13_10)	case 4:$(13_10)		with(obj_cola){$(13_10)			instance_destroy()$(13_10)		}$(13_10)		global.juego=false;$(13_10)		global.vcola=instance_create_depth(192,128,(-1),obj_cola);$(13_10)	break;$(13_10)	//Recibir respuesta del server$(13_10)	case 5:$(13_10)	var ncaja;$(13_10)	var opc=buffer_read(buffer,buffer_u8);$(13_10)	global.turno=false;show_debug_message(string(opc));$(13_10)	switch(opc){$(13_10)		//Seguir jugando$(13_10)		case 0:$(13_10)			if(buffer_read(buffer,buffer_u8)==1){$(13_10)				ncaja=buffer_read(buffer,buffer_u8);$(13_10)					if(global.simbolo="O"){		$(13_10)						global.cajas[ncaja].sprite_index=spr_cajaX;$(13_10)					}else{$(13_10)						$(13_10)						global.cajas[ncaja].sprite_index=spr_cajaO;$(13_10)					}$(13_10)				global.turno=true;$(13_10)				//le toca jugar$(13_10)			}$(13_10)		break;$(13_10)		//Victoria$(13_10)		case 1:$(13_10)			global.juego=false;$(13_10)			with(obj_resultado){$(13_10)				instance_destroy();$(13_10)			}$(13_10)			global.vcola=instance_create_depth(192,128,(-2),obj_resultado);$(13_10)			global.vcola.sprite_index=spr_victoria;$(13_10)		break;$(13_10)		//Derrota$(13_10)		case 2:$(13_10)			if(buffer_read(buffer,buffer_u8)!=0){$(13_10)				ncaja=buffer_read(buffer,buffer_u8);$(13_10)					if(global.simbolo="O"){		$(13_10)						global.cajas[ncaja].sprite_index=spr_cajaX;$(13_10)					}else{$(13_10)						$(13_10)						global.cajas[ncaja].sprite_index=spr_cajaO;$(13_10)					}$(13_10)				//le toca jugar$(13_10)			}$(13_10)			global.juego=false;$(13_10)			with(obj_resultado){$(13_10)				instance_destroy();$(13_10)			}$(13_10)			global.vcola=instance_create_depth(192,128,(-2),obj_resultado);$(13_10)			global.vcola.sprite_index=spr_derrota;$(13_10)		break;$(13_10)		//Empate$(13_10)		case 3:$(13_10)			if(buffer_read(buffer,buffer_u8)!=0){$(13_10)				ncaja=buffer_read(buffer,buffer_u8);$(13_10)					if(global.simbolo="O"){$(13_10)					with(obj_box){$(13_10)						instance_destroy();$(13_10)					}		$(13_10)						global.cajas[ncaja].sprite_index=spr_cajaX;$(13_10)					}else{$(13_10)						$(13_10)						global.cajas[ncaja].sprite_index=spr_cajaO;$(13_10)					}	//le toca jugar$(13_10)			}$(13_10)			global.juego=false;$(13_10)			with(obj_resultado){$(13_10)				instance_destroy();$(13_10)			}$(13_10)			global.vcola=instance_create_depth(192,128,(-2),obj_resultado);$(13_10)			global.vcola.sprite_index=spr_empate;$(13_10)		break;$(13_10)	}$(13_10)	break;$(13_10)}$(13_10)"
/// src_received_buffer(buffer)
var buffer=argument[0];
var msgId=buffer_read(buffer,buffer_u8);
switch(msgId){
	case 1://solicitud del ping
		var tiempoenviado=buffer_read(buffer,buffer_u32);
		latency=current_time-tiempoenviado;
	break;
	case 2://Esperar a la cola
		with(obj_cola){
			instance_destroy()
		}
		global.juego=false;
		global.vcola=instance_create_depth(192,128,(-1),obj_cola);
	break;
	case 3://salir de cola
		if(buffer_read(buffer,buffer_u8)==0){
			global.simbolo="O"
			global.turno=true;
		}else{
			global.simbolo="X"
			global.turno=false;
		}
		sala=buffer_read(buffer,buffer_u8);
		global.adversario=buffer_read(buffer,buffer_string);
		global.juego=true;
		with(obj_cola){
			instance_destroy()
		}
	break;
	//contrincante desconectado victoria
	case 4:
		with(obj_cola){
			instance_destroy()
		}
		global.juego=false;
		global.vcola=instance_create_depth(192,128,(-1),obj_cola);
	break;
	//Recibir respuesta del server
	case 5:
	var ncaja;
	var opc=buffer_read(buffer,buffer_u8);
	global.turno=false;show_debug_message(string(opc));
	switch(opc){
		//Seguir jugando
		case 0:
			if(buffer_read(buffer,buffer_u8)==1){
				ncaja=buffer_read(buffer,buffer_u8);
					if(global.simbolo="O"){		
						global.cajas[ncaja].sprite_index=spr_cajaX;
					}else{
						
						global.cajas[ncaja].sprite_index=spr_cajaO;
					}
				global.turno=true;
				//le toca jugar
			}
		break;
		//Victoria
		case 1:
			global.juego=false;
			with(obj_resultado){
				instance_destroy();
			}
			global.vcola=instance_create_depth(192,128,(-2),obj_resultado);
			global.vcola.sprite_index=spr_victoria;
		break;
		//Derrota
		case 2:
			if(buffer_read(buffer,buffer_u8)!=0){
				ncaja=buffer_read(buffer,buffer_u8);
					if(global.simbolo="O"){		
						global.cajas[ncaja].sprite_index=spr_cajaX;
					}else{
						
						global.cajas[ncaja].sprite_index=spr_cajaO;
					}
				//le toca jugar
			}
			global.juego=false;
			with(obj_resultado){
				instance_destroy();
			}
			global.vcola=instance_create_depth(192,128,(-2),obj_resultado);
			global.vcola.sprite_index=spr_derrota;
		break;
		//Empate
		case 3:
			if(buffer_read(buffer,buffer_u8)!=0){
				ncaja=buffer_read(buffer,buffer_u8);
					if(global.simbolo="O"){
					with(obj_box){
						instance_destroy();
					}		
						global.cajas[ncaja].sprite_index=spr_cajaX;
					}else{
						
						global.cajas[ncaja].sprite_index=spr_cajaO;
					}	//le toca jugar
			}
			global.juego=false;
			with(obj_resultado){
				instance_destroy();
			}
			global.vcola=instance_create_depth(192,128,(-2),obj_resultado);
			global.vcola.sprite_index=spr_empate;
		break;
	}
	break;
}