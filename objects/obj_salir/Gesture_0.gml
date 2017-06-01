/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 4497D8F8
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)show_message_async("Usted ha salido del servidor");$(13_10)		with(obj_box){$(13_10)			instance_destroy()$(13_10)		}$(13_10)		with(obj_cola){$(13_10)			instance_destroy()$(13_10)		}$(13_10)		with(obj_resultado){$(13_10)			instance_destroy()$(13_10)		}$(13_10)		room_goto(0);$(13_10)network_destroy(socket);"
/// @description Execute Code
show_message_async("Usted ha salido del servidor");
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
network_destroy(socket);