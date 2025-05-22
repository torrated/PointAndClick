/// @description Room anterior

try
{
	if (obj_settings.debug)
		room_goto_previous();
}
catch (_exception)
{
	show_message("Error en obj_Debug.P "+_exception.longMessage);
}