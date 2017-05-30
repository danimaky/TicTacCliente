/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 0BA3242A
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)event_inherited();$(13_10)with(obj_usuario){instance_destroy()}$(13_10)with(obj_contra){instance_destroy()}$(13_10)room_goto_previous();"
/// @description Execute Code
event_inherited();
with(obj_usuario){instance_destroy()}
with(obj_contra){instance_destroy()}
room_goto_previous();