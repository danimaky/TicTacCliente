/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 337F89C0
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)draw_set_valign(fa_middle);$(13_10)switch(tipo){$(13_10)	case 0:$(13_10)		draw_text_color(x,y,message,color,color,color,color,alpha);$(13_10)	break;$(13_10)	case 1:$(13_10)		draw_text_transformed(x, y, message, 2, 2, image_angle);$(13_10)	break;$(13_10)}$(13_10)//draw_text_color(x,y,message,color,color,color,color,alpha);$(13_10)//draw_text_transformed(x,y,message,24,0,0);"
/// @description Execute Code
draw_set_valign(fa_middle);
switch(tipo){
	case 0:
		draw_text_color(x,y,message,color,color,color,color,alpha);
	break;
	case 1:
		draw_text_transformed(x, y, message, 2, 2, image_angle);
	break;
}
//draw_text_color(x,y,message,color,color,color,color,alpha);
//draw_text_transformed(x,y,message,24,0,0);