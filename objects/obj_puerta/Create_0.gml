// Inherit the parent event
event_inherited();

try {

destino = noone;
abierta = false;
bloqueada = true;

sprite_cerrada = spr_puerta;
sprite_abierta = spr_puerta;

//array_insert(acciones,-1,ACCIONES_PLAYER.USAR);

}
catch (_exception){
	show_message("Error en obj_puerta.create: "+_exception.longMessage);}