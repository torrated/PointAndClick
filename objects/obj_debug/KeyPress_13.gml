/// @description Activa o desactiva el modo debug

try
{
	if (obj_settings.debug)
	{
		obj_settings.debug = false;
		room_goto(room_despacho);
	}
	else
	{
		obj_settings.debug = true;
		room_goto(room_debug);
	}
}
catch (_exception)
{
	show_message("Error en obj_debug.KeyPressEnter: "+_exception.longMessage);
}