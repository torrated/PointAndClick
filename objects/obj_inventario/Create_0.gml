/// @description

try
{
	inventario_abierto = false;
	outline = false;
}
catch (_exception)
{
	show_message("Error en obj_inventario.create: "+_exception.longMessage);
}