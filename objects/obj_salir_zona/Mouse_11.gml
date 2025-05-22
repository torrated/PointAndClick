/// @description Actualiza el cursor

try
{
	cursor_sprite = obj_settings.cursor_flecha;
}
catch (_exception)
{
	show_message("Error en obj_salir_zona.MouseLeave: "+_exception.longMessage);
}