/// @description Destruye el inventario de room_debug

try {

if (instance_exists(obj_inventario) && room == room_debug)
{
	instance_destroy(obj_inventario,false);
}

}
catch (_exception){
	show_message("Error en obj_juego.RoomEnd: "+_exception.longMessage);}