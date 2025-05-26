/// @description 

try
{
	if (interaccion)
		if (fnc_secuencia_activa(usable_en_secuencias)) // se puede atravesar en esta escena+secuencia
	        room_goto(destino);
		else
		{
			fnc_personaje_dice(obj_player,fnc_texto_denegado(textos_denegados));
			interaccion = false;
		}
}
catch (_exception)
{
	show_message("Error en obj_salir_zona.Step: "+_exception.longMessage);
}