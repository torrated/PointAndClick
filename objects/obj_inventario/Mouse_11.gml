/// @description desactiva el outline

try
{
	outline = false;
}
catch (_exception)
{
	show_message("Error en obj_inventario.MouseLeave: "+_exception.longMessage);
}