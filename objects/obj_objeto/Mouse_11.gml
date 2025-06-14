/// @description Desctiva el outline

try
{
	outline = false;
}
catch (_exception)
{
	show_message("Error en obj_objeto.MouseLeave: "+_exception.longMessage);
}