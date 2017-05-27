/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 344670B6
/// @DnDArgument : "code" "with(obj_resultado){$(13_10)	instance_destroy();$(13_10)}$(13_10)//entrar en cola$(13_10)initcajas();$(13_10)with(obj_controller){$(13_10)buffer_seek(global.buffer,buffer_seek_start,0);$(13_10)buffer_write(global.buffer,buffer_u8,2);$(13_10)network_send_packet(socket,global.buffer,buffer_tell(global.buffer));}"
with(obj_resultado){
	instance_destroy();
}
//entrar en cola
initcajas();
with(obj_controller){
buffer_seek(global.buffer,buffer_seek_start,0);
buffer_write(global.buffer,buffer_u8,2);
network_send_packet(socket,global.buffer,buffer_tell(global.buffer));}