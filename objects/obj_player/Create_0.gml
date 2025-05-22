/// @description 

try
{
	#region SPRITES
    sprite_idle = spr_player_idle;
    sprite_caminando = spr_player_caminando;
    sprite_tocar = spr_player_toca;
	#endregion
    
	#region ESTADOS
	enum ESTADOS_PLAYER
	{
		INVENTARIO_ABIERTO,
		HABLANDO_BOCADILLO,
		HABLANDO_TEXTO,
		NORMAL
	};
	#endregion
	estado = ESTADOS_PLAYER.NORMAL;

    velocidad = 6; // en pixels a la que se puede por la pantalla
    destino = noone; // a dónde va
	proxima_accion = noone; // lo que va a hacer en el destino
    objeto = noone; // objeto destinatario de la proxima accion
    
    sombra = instance_create_layer(x,y,layer,obj_sombra);
    sombra.follow = self;

    inventario = [];
}
catch (_exception)
{
	show_message("Error en obj_player.create: "+_exception.longMessage);
}