/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 4E5B2F8E
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)event_inherited();$(13_10)//se genera la solicitud al servidor de usuarios$(13_10)//respuesta 0 usuario invalido/ datos incorrectos$(13_10)//respuesta 1 usuario conectado$(13_10)//respuesta 2 Conexion exitosa$(13_10)$(13_10)http_get("http://tictac.magtdata.com/login.php?username="+campousuario.nickname+"&password="+campocontrasena.nickname);$(13_10)mensajito = instance_create_depth(0,0,1,obj_serverinfo);$(13_10)mensajito.tipo=1;$(13_10)mensajito.message="CONECTANDO...";$(13_10)mensajito.depth=-2;"
/// @description Execute Code
event_inherited();
//se genera la solicitud al servidor de usuarios
//respuesta 0 usuario invalido/ datos incorrectos
//respuesta 1 usuario conectado
//respuesta 2 Conexion exitosa

http_get("http://tictac.magtdata.com/login.php?username="+campousuario.nickname+"&password="+campocontrasena.nickname);
mensajito = instance_create_depth(0,0,1,obj_serverinfo);
mensajito.tipo=1;
mensajito.message="CONECTANDO...";
mensajito.depth=-2;