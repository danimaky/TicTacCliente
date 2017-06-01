/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 0CEF47A8
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)draw_set_color(c_white);$(13_10)draw_text(5,5,"Latencia: "+string(latency));$(13_10)draw_text(5,20,"Bienvenid@ "+string(global.nickname));$(13_10)if(sala!=-1){draw_text(5,40,"Sala: "+string(sala));}$(13_10)if(global.adversario!=""){draw_text(5,60,"Adversario: "+string(global.adversario));}$(13_10)if(global.juego){$(13_10)	if(global.turno){$(13_10)		draw_text_color(room_height/2,80,"Es tu turno",c_green,c_green,c_green,c_green,1);$(13_10)	}else{$(13_10)		draw_text_color(room_height/2,80,"Esperando jugada del adversario",c_red,c_red,c_red,c_red,1);$(13_10)	}$(13_10)	draw_text(5,80,"Tu eres el "+string(global.simbolo));$(13_10)}"
/// @description Execute Code
draw_set_color(c_white);
draw_text(5,5,"Latencia: "+string(latency));
draw_text(5,20,"Bienvenid@ "+string(global.nickname));
if(sala!=-1){draw_text(5,40,"Sala: "+string(sala));}
if(global.adversario!=""){draw_text(5,60,"Adversario: "+string(global.adversario));}
if(global.juego){
	if(global.turno){
		draw_text_color(room_height/2,80,"Es tu turno",c_green,c_green,c_green,c_green,1);
	}else{
		draw_text_color(room_height/2,80,"Esperando jugada del adversario",c_red,c_red,c_red,c_red,1);
	}
	draw_text(5,80,"Tu eres el "+string(global.simbolo));
}