/// @description 

try {

draw_self();
var _font = draw_get_font();
draw_set_font(Font1);

for (var _i = 0; _i <= linea; _i++)
{
	draw_text_transformed(x,y+_i*32,texto[_i],1,1,0);
}

draw_set_font(_font)
}
catch (_exception){
	show_message("Error en obj_texto.draw: "+_exception.longMessage);}