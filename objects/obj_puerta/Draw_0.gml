
// Inherit the parent event
event_inherited();

try {

if (obj_settings.debug)
{
	var _haligh = draw_get_halign();
	draw_set_halign(fa_center);
	var _color = draw_get_color();
	draw_set_color(c_white);
	
	var _abierta = "abierta";
	var _bloqueada = "bloqueada";
	if (!abierta)
		_abierta = "cerrada";
	if !(bloqueada)
		_bloqueada = "no bloqueada";
		
	draw_text(x,y+24,$"{_abierta}\n{_bloqueada}");
	
	draw_set_halign(_haligh);
	draw_set_color(_color);
}

}
catch (_exception){
	show_message("Error en obj_puerta.draw: "+_exception.longMessage);}