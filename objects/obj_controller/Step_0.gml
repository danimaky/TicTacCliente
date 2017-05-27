/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 11E5EFF3
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)//update latencia cada segundo del room$(13_10)buffer_seek(global.buffer,buffer_seek_start,0);$(13_10)buffer_write(global.buffer,buffer_u8,1);$(13_10)buffer_write(global.buffer,buffer_u32,current_time);$(13_10)network_send_packet(socket,global.buffer,buffer_tell(global.buffer));"
/// @description Execute Code
//update latencia cada segundo del room
buffer_seek(global.buffer,buffer_seek_start,0);
buffer_write(global.buffer,buffer_u8,1);
buffer_write(global.buffer,buffer_u32,current_time);
network_send_packet(socket,global.buffer,buffer_tell(global.buffer));