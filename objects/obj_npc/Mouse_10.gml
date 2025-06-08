/// @description Activa el outline

try
{
	outline = true;
}
catch (_exception)
{
	show_message("Error en obj_npc.MouseEnter: "+_exception.longMessage);
}