/// @description Settings generales del juego

try
{
	#region MODO DEBUG
		debug = true;
	#endregion

	#region CURSOR
		cursor_flecha = spr_cursor;
		cursor_salir = spr_cursor_salir;
		cursor_sprite = cursor_flecha;
		window_set_cursor(cr_none);
	#endregion
	
	#region IDIOMA
	idioma_seleccionado = 1; //spanish por defecto
	idiomas = ["spanish","english"];
	idioma = idiomas[idioma_seleccionado];
	#endregion
}
catch (_exception)
{
	show_message("Error en obj_settings.Create: "+_exception.longMessage);
}