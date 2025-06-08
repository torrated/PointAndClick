/// @description Dibuja el objeto con o sin outline

try
{
	if (outline)
	{
		fnc_resaltar(x,y,sprite_index,image_xscale,image_yscale,image_alpha);
		if (array_contains(obj_inventario.inventario_ids,self.id))
			fnc_personaje_dice(self,nombre,1);
	}
	else
		draw_self();
}
catch (_exception)
{
	show_message("Error en obj_interaccionable.draw: "+_exception.longMessage);
}