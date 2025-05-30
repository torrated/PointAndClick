/// @description Mueve al personaje a su punto correcto al cambiar de room

try {

if (instance_exists(obj_player))
{
	obj_player.x = punto_aparicion.x;
	if (punto_aparicion.object_index == obj_punto_aparicion_2)
		obj_player.image_xscale *= -1;
}

}
catch (_exception){
	show_message("Error en obj_juego.RoomStart: "+_exception.longMessage);}