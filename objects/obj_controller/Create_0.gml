/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 1E634DDA
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)window_set_cursor(cr_default);$(13_10)socket = network_create_socket(network_socket_tcp);$(13_10)ip=string(ds_list_find_value(global.listaserver,global.serverselect));$(13_10)//nickname=get_string("Introduzca un nickname","John Doe");$(13_10)//http_get("http://tictac-169115.appspot.com/");$(13_10)network_set_config(network_config_connect_timeout, 3000);$(13_10)isConnected=network_connect(socket,ip,1232);$(13_10)if(isConnected!=-1){$(13_10)global.buffer=buffer_create(1024,buffer_fixed,1);$(13_10)global.adversario="";$(13_10)latency=0;$(13_10)alerta=true;$(13_10)sala=-1;$(13_10)with(obj_message){$(13_10)	instance_destroy();$(13_10)}$(13_10)with(obj_salir){$(13_10)	instance_destroy();$(13_10)}$(13_10)with(obj_init){$(13_10)	instance_destroy();$(13_10)}$(13_10)with(obj_iniciar){$(13_10)	instance_destroy();$(13_10)}$(13_10)salida=instance_create_depth(576,0,-1,obj_salir);$(13_10)salida.socket=socket;$(13_10)var notification = instance_create_depth(0,0,1,obj_message);$(13_10)notification.message="Cliente inicializado!";$(13_10)global.simbolo="O";$(13_10)global.turno=false;$(13_10)global.juego=false;$(13_10)with(obj_cola){$(13_10)	instance_destroy();$(13_10)}$(13_10)//registrar usuario$(13_10)buffer_seek(global.buffer,buffer_seek_start,0);$(13_10)buffer_write(global.buffer,buffer_u8,6);$(13_10)buffer_write(global.buffer,buffer_string,global.nickname);$(13_10)show_debug_message("Me llamo "+global.nickname);$(13_10)network_send_packet(socket,global.buffer,buffer_tell(global.buffer));$(13_10)//entrar en cola$(13_10)buffer_seek(global.buffer,buffer_seek_start,0);$(13_10)buffer_write(global.buffer,buffer_u8,2);$(13_10)network_send_packet(socket,global.buffer,buffer_tell(global.buffer));$(13_10)initcajas()$(13_10)}else{$(13_10)	show_message_async("No es posible conectar con el servidor")$(13_10)	room_goto(0);$(13_10)}"
/// @description Execute Code
window_set_cursor(cr_default);
socket = network_create_socket(network_socket_tcp);
ip=string(ds_list_find_value(global.listaserver,global.serverselect));
//nickname=get_string("Introduzca un nickname","John Doe");
//http_get("http://tictac-169115.appspot.com/");
network_set_config(network_config_connect_timeout, 3000);
isConnected=network_connect(socket,ip,1232);
if(isConnected!=-1){
global.buffer=buffer_create(1024,buffer_fixed,1);
global.adversario="";
latency=0;
alerta=true;
sala=-1;
with(obj_message){
	instance_destroy();
}
with(obj_salir){
	instance_destroy();
}
with(obj_init){
	instance_destroy();
}
with(obj_iniciar){
	instance_destroy();
}
salida=instance_create_depth(576,0,-1,obj_salir);
salida.socket=socket;
var notification = instance_create_depth(0,0,1,obj_message);
notification.message="Cliente inicializado!";
global.simbolo="O";
global.turno=false;
global.juego=false;
with(obj_cola){
	instance_destroy();
}
//registrar usuario
buffer_seek(global.buffer,buffer_seek_start,0);
buffer_write(global.buffer,buffer_u8,6);
buffer_write(global.buffer,buffer_string,global.nickname);
show_debug_message("Me llamo "+global.nickname);
network_send_packet(socket,global.buffer,buffer_tell(global.buffer));
//entrar en cola
buffer_seek(global.buffer,buffer_seek_start,0);
buffer_write(global.buffer,buffer_u8,2);
network_send_packet(socket,global.buffer,buffer_tell(global.buffer));
initcajas()
}else{
	show_message_async("No es posible conectar con el servidor")
	room_goto(0);
}