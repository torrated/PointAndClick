/// @description Inicia la alarma

try
{
	if (alarm_get(0) == -1)
		alarm_set(0,tiempo);
}
catch (_exception)
{
	show_message("Error en obj_bocadillo.step: "+_exception.longMessage);
}