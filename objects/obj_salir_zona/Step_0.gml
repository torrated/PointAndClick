/// @description 

try
{
	if (interaccion)
		if (destino <> noone)
	        room_goto(destino);
}
catch (_exception)
{
	show_message("Error en obj_salir_zona.Step: "+_exception.longMessage);
}