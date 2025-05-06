/// @description 

try {

if (abierta)
	sprite_index = sprite_abierta;
else
	sprite_index = sprite_cerrada;

if (interaccion)
{
	if !(abierta)
	{
		if !(bloqueada)
			abierta = true;
		else
		{
			with (obj_bocadillo)
			{
				instance_destroy(self,true);
			}
			var _bocadillo = instance_create_layer(obj_player.x,obj_player.y-obj_player.sprite_height,"Texto",obj_bocadillo);
			_bocadillo.texto[0] = "La puerta está bloqueada";
		}
		interaccion = false;
	}
	else
	{
		if (obj_settings.debug)
			room_goto(room_debug);
		else
			room_goto(destino);
	}
}

}
catch (_exception){
	show_message("Error en obj_puerta.step: "+_exception.longMessage);}