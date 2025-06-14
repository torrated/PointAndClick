/// @description Activa el outline solo en la instancia con menor depth

try
{
	Desactiva_outline_si_depth_no_menor();
}
catch (_exception)
{
	show_message("Error en obj_mouse.step: "+_exception.longMessage);
}