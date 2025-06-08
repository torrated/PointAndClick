/// @description Cambia el idioma entre español e inglés

try
{
	if (obj_settings.debug)
		if (obj_settings.idioma_seleccionado == 1)
			obj_settings.fnc_cambiar_idioma(0);
		else
			obj_settings.fnc_cambiar_idioma(1);
}
catch (_exception)
{
	show_message("Error en obj_Debug.P "+_exception.longMessage);
}