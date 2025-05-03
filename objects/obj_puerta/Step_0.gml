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
			show_message("esta puerta está bloqueada");
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