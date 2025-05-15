/// @description 

try {

interaccion = false;
outline = false;
accion = noone;
acciones = [ACCIONES_PLAYER.COGER,ACCIONES_PLAYER.HABLAR,ACCIONES_PLAYER.USAR,ACCIONES_PLAYER.VER];
personaje = obj_player;

textos[ACCIONES_PLAYER.COGER] = "texto genérico para coger";
textos[ACCIONES_PLAYER.HABLAR] = "texto genérico para hablar";
textos[ACCIONES_PLAYER.USAR] = "texto genérico para usar";
textos[ACCIONES_PLAYER.VER] = "texto genérico para ver";

}
catch (_exception){
	show_message("Error en obj_interaccionable.Create: "+_exception.longMessage);}