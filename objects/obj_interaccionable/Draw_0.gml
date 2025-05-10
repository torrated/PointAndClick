/// @description 

try {

if (obj_settings.debug)
{
	var _halign = draw_get_halign();
	draw_set_halign(fa_center)
	draw_text(x,y,$"interaccion:{interaccion}");
	draw_set_halign(_halign);
}

if (outline)
	fnc_resaltar(x,y,sprite_index,image_xscale,image_yscale,image_alpha);
else
	draw_self();

}
catch (_exception){
	show_message("Error en obj_interaccionable.draw: "+_exception.longMessage);}