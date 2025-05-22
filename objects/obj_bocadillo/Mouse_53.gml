/// @description Al hacer clic se pasa a la siguiente linea o se destruye
try
{
	linea += 1;
	if (linea >= array_length(texto))
		alarm[0] = 1;
}
catch (_exception)
{
	show_message("Error en obj_bocadillo.MouseLeftPressed: "+_exception.longMessage);
}