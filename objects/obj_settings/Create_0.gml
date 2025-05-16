/// @description 

try {

debug = true;

cursor_flecha = spr_cursor;
cursor_salir = spr_cursor_salir;
cursor_sprite = cursor_flecha;
window_set_cursor(cr_none);

}
catch (_exception){
	show_message("Error en obj_settings.Create: "+_exception.longMessage);}