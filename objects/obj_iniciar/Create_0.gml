/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 7614BDBE
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)with(obj_usuario){$(13_10)	instance_destroy();$(13_10)}$(13_10)with(obj_contra){$(13_10)	instance_destroy();$(13_10)}$(13_10)campousuario=instance_create_depth(320,192,-1,obj_usuario);$(13_10)campocontrasena=instance_create_depth(320,288,-1,obj_contra);$(13_10)"
/// @description Execute Code
with(obj_usuario){
	instance_destroy();
}
with(obj_contra){
	instance_destroy();
}
campousuario=instance_create_depth(320,192,-1,obj_usuario);
campocontrasena=instance_create_depth(320,288,-1,obj_contra);