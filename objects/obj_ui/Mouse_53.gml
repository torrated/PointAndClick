/// @description Si el menu esta en pantalla y se hace clic (da igual donde), se destruye 

try
{
	if (mostrar)
		if !(seleccionado)
			instance_destroy(self,true);
}
catch (_exception)
{
	show_message("Error en obj_ui.GlobalLeftPressed: "+_exception.longMessage);
}