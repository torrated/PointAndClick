/// @description Cierra el juego
try
{
	if (obj_settings.debug)
		game_end();
}
catch (_exception)
{
	show_message("Error en obj_Debug.ESCAPE "+_exception.longMessage);
}