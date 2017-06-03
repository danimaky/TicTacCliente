/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 5971CC69
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)//http_get("http://localhost/test.php");$(13_10)//http_get("http://lista.tictac.magtdata.com/lista.php?lista");$(13_10)//http_post_string("http://lista.tictac.magtdata.com/lista.php?", "lista");$(13_10)var notification = instance_create_depth(0,0,1,obj_titles);$(13_10)notification.message="LISTA DE SERVIDORES";$(13_10)with(obj_server){$(13_10)	instance_destroy()$(13_10)}$(13_10)with(obj_serverinfo){$(13_10)	instance_destroy()$(13_10)}$(13_10)instance_create_depth(63,160,-1,obj_server);$(13_10)instance_create_depth(63,50+160,-1,obj_server);$(13_10)instance_create_depth(63,100+160,-1,obj_server);$(13_10)serverinfo = instance_create_depth(0,0,1,obj_serverinfo);$(13_10)serverinfo.color=c_purple;$(13_10)serverinfo.message="CARGANDO LISTA DE SERVIDORES...";"
/// @description Execute Code
//http_get("http://localhost/test.php");
http_get("http://lista.tictac.magtdata.com/lista.php");
//http_post_string("http://lista.tictac.magtdata.com/lista.php?", "lista");
var notification = instance_create_depth(0,0,1,obj_titles);
notification.message="LISTA DE SERVIDORES";
with(obj_server){
	instance_destroy()
}
with(obj_serverinfo){
	instance_destroy()
}
instance_create_depth(63,160,-1,obj_server);
instance_create_depth(63,50+160,-1,obj_server);
instance_create_depth(63,100+160,-1,obj_server);
serverinfo = instance_create_depth(0,0,1,obj_serverinfo);
serverinfo.color=c_purple;
serverinfo.message="CARGANDO LISTA DE SERVIDORES...";