/// @description Al cambiar de sala el cursor vuelve a recargarse

try
{
	cursor_sprite = cursor_flecha;
}
catch (_exception)
{
	show_message("Error en obj_settings.RoomStart: "+_exception.longMessage);
}