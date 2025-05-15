/// @description 

try {

interaccion = false;
outline = false;
accion = noone;
acciones = [ACCIONES_PLAYER.VER];
personaje = obj_player;

}
catch (_exception){
	show_message("Error en obj_interaccionable.Create: "+_exception.longMessage);}