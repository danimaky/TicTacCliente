/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 1E634DDA
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)socket = network_create_socket(network_socket_tcp);$(13_10)ip=get_string("Introduzca la ip del server","127.0.0.1");$(13_10)isConnected=network_connect(socket,ip,1232);$(13_10)global.buffer=buffer_create(1024,buffer_fixed,1);$(13_10)latency=0;$(13_10)sala=-1;$(13_10)with(obj_message){$(13_10)	instance_destroy();$(13_10)}$(13_10)var notification = instance_create_depth(0,0,1,obj_message);$(13_10)notification.message="Cliente inicializado!";$(13_10)initcajas()$(13_10)global.simbolo="O";$(13_10)global.turno=false;$(13_10)global.juego=false;$(13_10)with(obj_cola){$(13_10)	instance_destroy();$(13_10)}$(13_10)//entrar en cola$(13_10)buffer_seek(global.buffer,buffer_seek_start,0);$(13_10)buffer_write(global.buffer,buffer_u8,2);$(13_10)network_send_packet(socket,global.buffer,buffer_tell(global.buffer));"
/// @description Execute Code
socket = network_create_socket(network_socket_tcp);
ip=get_string("Introduzca la ip del server","127.0.0.1");
isConnected=network_connect(socket,ip,1232);
global.buffer=buffer_create(1024,buffer_fixed,1);
latency=0;
sala=-1;
with(obj_message){
	instance_destroy();
}
var notification = instance_create_depth(0,0,1,obj_message);
notification.message="Cliente inicializado!";
initcajas()
global.simbolo="O";
global.turno=false;
global.juego=false;
with(obj_cola){
	instance_destroy();
}
//entrar en cola
buffer_seek(global.buffer,buffer_seek_start,0);
buffer_write(global.buffer,buffer_u8,2);
network_send_packet(socket,global.buffer,buffer_tell(global.buffer));