/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 4E5B2F8E
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)event_inherited();$(13_10)//se genera la solicitud al servidor de usuarios$(13_10)//respuesta 0 usuario invalido/ datos incorrectos$(13_10)//respuesta 1 usuario conectado$(13_10)//respuesta 2 Conexion exitosa$(13_10)http_get("http://localhost/testuser2.php?nickname="+campousuario.nickname+"&contrasena="+campocontrasena.nickname);$(13_10)"
/// @description Execute Code
event_inherited();
//se genera la solicitud al servidor de usuarios
//respuesta 0 usuario invalido/ datos incorrectos
//respuesta 1 usuario conectado
//respuesta 2 Conexion exitosa
http_get("http://localhost/testuser2.php?nickname="+campousuario.nickname+"&contrasena="+campocontrasena.nickname);