/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 5432DD93
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)if(activo){$(13_10)if(keyboard_check(vk_anykey)and string_length(nickname)<20){$(13_10)	nickname=nickname+string(keyboard_string);$(13_10)	keyboard_string="";$(13_10)}$(13_10)if(keyboard_check(vk_backspace)and !keyboard_check_pressed(vk_backspace) and delete_timer=2){$(13_10)	nickname=string_delete(nickname,string_length(nickname),1);$(13_10)	delete_timer=0;$(13_10)	keyboard_string="";$(13_10)}$(13_10)if(keyboard_check_pressed(vk_backspace)){$(13_10)	nickname=string_delete(nickname,string_length(nickname),1);$(13_10)	delete_timer=-4;$(13_10)	keyboard_string="";$(13_10)}$(13_10)if(delete_timer!=2){$(13_10)	delete_timer++;$(13_10)}}"
/// @description Execute Code
if(activo){
if(keyboard_check(vk_anykey)and string_length(nickname)<20){
	nickname=nickname+string(keyboard_string);
	keyboard_string="";
}
if(keyboard_check(vk_backspace)and !keyboard_check_pressed(vk_backspace) and delete_timer=2){
	nickname=string_delete(nickname,string_length(nickname),1);
	delete_timer=0;
	keyboard_string="";
}
if(keyboard_check_pressed(vk_backspace)){
	nickname=string_delete(nickname,string_length(nickname),1);
	delete_timer=-4;
	keyboard_string="";
}
if(delete_timer!=2){
	delete_timer++;
}}