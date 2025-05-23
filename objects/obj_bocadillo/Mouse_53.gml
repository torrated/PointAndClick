/// @description Al hacer clic se pasa a la siguiente linea o se destruye
try
{
	if (linea+1 >= array_length(texto))
		alarm[0] = 1;
	else
		linea += 1;
}
catch (_exception)
{
	show_message("Error en obj_bocadillo.MouseLeftPressed: "+_exception.longMessage);
}