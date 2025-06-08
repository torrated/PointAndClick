try
{
	event_inherited();

	outline = false;
}
catch (_exception)
{
	show_message("Error en obj_npc.Create: "+_exception.longMessage);
}