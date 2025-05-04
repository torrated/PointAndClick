/// @description 

try {

if (obj_settings.debug)
{
	var _halign = draw_get_halign();
	draw_set_halign(fa_center)
	draw_text(x,y,$"interaccion:{interaccion}");
	draw_set_halign(_halign);
}

draw_self();
if (interaccion)
	draw_sprite(Sprite11,0,x,y-100)

}
catch (_exception){
	show_message("Error en obj_interaccionable.draw: "+_exception.longMessage);}