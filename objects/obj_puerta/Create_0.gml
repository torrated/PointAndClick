// Inherit the parent event
event_inherited();

try {

destino = noone;
abierta = false;
bloqueada = false;

sprite_cerrada = spr_puerta;
sprite_abierta = spr_puerta;
}
catch (_exception){
	show_message("Error en obj_puerta.create: "+_exception.longMessage);}