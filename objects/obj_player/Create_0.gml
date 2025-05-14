/// @description 

try {

sprite_idle = spr_player_idle;
sprite_caminando = spr_player_caminando;
sprite_tocar = spr_player_toca;

velocidad = 6;
destino = noone;
objeto = noone;

sombra = instance_create_layer(x,y,layer,obj_sombra);
sombra.follow = self;

proxima_accion = noone;
//x_accion = 0;
//y_accion = 0;

}
catch (_exception){
	show_message("Error en obj_player.create: "+_exception.longMessage);}