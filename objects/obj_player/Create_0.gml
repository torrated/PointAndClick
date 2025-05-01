/// @description 

try {

sprite_idle = spr_player;
sprite_caminando = spr_player;

velocidad = 4;
destino = noone;

}
catch (_exception){
	show_message("Error en obj_player.create: "+_exception.longMessage);}