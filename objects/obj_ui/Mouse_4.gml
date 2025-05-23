/// @description Guarda en obj_player.proxima_accion la opcion seleccionada

try
{
	if (mostrar)
	{
		if (seleccionado)
			obj_player.proxima_accion = accion;
		instance_destroy(self,true);
	}
}
catch (_exception)
{
	show_message("Error en obj_ui.LeftPressed: "+_exception.longMessage);
}