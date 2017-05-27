/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 5B34BE6D
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)var tipo_evento = ds_map_find_value(async_load,"type");$(13_10)switch (tipo_evento){$(13_10)	case network_type_data:$(13_10)		//gestionar datos que se reciben$(13_10)		var buffer=ds_map_find_value(async_load,"buffer");$(13_10)		buffer_seek(buffer, buffer_seek_start, 0);$(13_10)		src_received_buffer(buffer);$(13_10)		break;$(13_10)}"
/// @description Execute Code
var tipo_evento = ds_map_find_value(async_load,"type");
switch (tipo_evento){
	case network_type_data:
		//gestionar datos que se reciben
		var buffer=ds_map_find_value(async_load,"buffer");
		buffer_seek(buffer, buffer_seek_start, 0);
		src_received_buffer(buffer);
		break;
}