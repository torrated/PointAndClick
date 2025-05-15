/// @description 

try {

draw_self();

if (obj_settings.debug)
{
	var _halign = draw_get_halign();
	
	draw_set_halign(fa_center);
	draw_set_halign(_halign);
}

}
catch (_exception){
	show_message("Error en obj_player.Draw: "+_exception.longMessage);}