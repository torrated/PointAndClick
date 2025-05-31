/// @description Dibuja el NPC con o sin outline

try
{
	if (outline)
	{
		fnc_resaltar(x,y,sprite_index,image_xscale,image_yscale,image_alpha);
	}
	else
		draw_self();
}
catch (_exception)
{
	show_message("Error en obj_npc.draw: "+_exception.longMessage);
}