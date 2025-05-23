/// @description Selecciona el sprite correcto en funcion de la velocidad

try
{
	if (speed > 0)
	{
		sprite_index = sprite_caminando;
		if (direction = 0)
			image_xscale = 1;
		else
			image_xscale = -1;
	}
	else if (sprite_index == sprite_caminando)
	{
		sprite_index = sprite_idle;
		image_index = 0;
	}
}
catch (_exception)
{
	show_message("Error en obj_player.step: "+_exception.longMessage);
}