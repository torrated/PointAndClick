/// @description

try
{
	inventario_abierto = false;
	outline = false;
	
	inventario = []; // el inventario de objetos
}
catch (_exception)
{
	show_message("Error en obj_inventario.create: "+_exception.longMessage);
}