/// @description 

try {

draw_self()
if (obj_settings.debug)
{
	var _halign = draw_get_halign();
	draw_set_halign(fa_center)
	draw_text(x,y-30,$"interaccion:{interaccion}");
	draw_set_halign(_halign);
}

}
catch (_exception){
	show_message("Error en obj_interaccionable.draw: "+_exception.longMessage);}