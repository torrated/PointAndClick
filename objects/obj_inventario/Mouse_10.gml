/// @description Activa el outline

try
{
	outline = true;
}
catch (_exception)
{
	show_message("Error en obj_inventario.MouseEnter: "+_exception.longMessage);
}