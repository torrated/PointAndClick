/// @description 

try {

debug = false;
cursor_sprite = spr_cursor;
window_set_cursor(cr_none);

}
catch (_exception){
	show_message("Error en obj_settings.Create: "+_exception.longMessage);}