/// @function                fnc_raton_en_pantalla()
/// @description             Indica si el raton esta en el Room (true) o no (false)
/// @return {Bool}
function fnc_raton_en_pantalla()
{
try {

return (mouse_x > 0 && mouse_x < room_width && mouse_y > 0 && mouse_y < room_height)

}
catch (_exception){
	show_message("Error en fnc_raton_en_pantalla: "+_exception.longMessage);}
}