/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 0E371925
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)event_inherited();$(13_10)with(obj_serverinfo){$(13_10)	instance_destroy();$(13_10)}$(13_10)room_goto_next();$(13_10)"
/// @description Execute Code
event_inherited();
with(obj_serverinfo){
	instance_destroy();
}
room_goto_next();