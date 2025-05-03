/// @description 

try {

sprite_idle = spr_player_idle;
sprite_caminando = spr_player_caminando;

velocidad = 6;
destino = noone;
objeto = noone;

sombra = instance_create_layer(x,y,layer,obj_sombra);
sombra.follow = self;

}
catch (_exception){
	show_message("Error en obj_player.create: "+_exception.longMessage);}