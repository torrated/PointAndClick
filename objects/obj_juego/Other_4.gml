/// @description Mueve al personaje a su punto correcto al cambiar de room

try {

if (instance_exists(obj_player))
	obj_player.x = punto_aparicion.x;

}
catch (_exception){
	show_message("Error en obj_juego.RoomStart: "+_exception.longMessage);}