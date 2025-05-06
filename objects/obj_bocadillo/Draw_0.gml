/// @description 

try {

draw_self();
var _font = draw_get_font();
draw_set_font(Font1);

for (var _i = 0; _i <= linea; _i++)
{
	fnc_texto_dialogo(x,y,c_black,c_white,texto[_i]);
}

draw_set_font(_font)
}
catch (_exception){
	show_message("Error en obj_texto.draw: "+_exception.longMessage);}