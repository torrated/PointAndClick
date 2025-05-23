/// @description Quiza el offset y el alpha cuando el ratón ya no está encima

try
{
	if (mostrar)
	{
		offset_x = 0;
		offset_y = 0;
		image_alpha = alpha_inicial;
		seleccionado = false;
	}
}
catch (_exception)
{
	show_message("Error en obj_ui.MouseLeave: "+_exception.longMessage);
}