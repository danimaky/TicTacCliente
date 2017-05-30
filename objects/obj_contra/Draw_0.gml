/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 11A945E6
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)draw_self();$(13_10)draw_set_color(c_white);$(13_10)draw_set_halign(fa_center);$(13_10)draw_set_valign(fa_middle);$(13_10)//draw_set_font(Roboto);$(13_10)var i=0;$(13_10)secreto="";$(13_10)while(i<string_length(nickname)){$(13_10)	secreto=secreto+"*";$(13_10)	i++;$(13_10)}$(13_10)draw_text(x,y,secreto);"
/// @description Execute Code
draw_self();
draw_set_color(c_white);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
//draw_set_font(Roboto);
var i=0;
secreto="";
while(i<string_length(nickname)){
	secreto=secreto+"*";
	i++;
}
draw_text(x,y,secreto);