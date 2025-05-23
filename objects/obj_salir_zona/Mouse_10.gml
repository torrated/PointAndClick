/// @description Actualiza el cursor

try
{
	cursor_sprite = obj_settings.cursor_salir;
}
catch (_exception)
{
	show_message("Error en obj_salir_zona.MouseEnter: "+_exception.longMessage);
}