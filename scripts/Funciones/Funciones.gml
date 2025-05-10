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


/// @function                fnc_texto_dialogo()
/// @description             Escribe en pantalla un texto de un color con un outline de otro color
function fnc_texto_dialogo(x, y, outline_color, string_color, string)
{
try{
	var _color = draw_get_color();
	var _font = draw_get_font();
	draw_set_font(Font1);
	xx = argument[0];  
	yy = argument[1];  
  
	//Outline  
	var _i = 1;
	repeat(3)
	{
		draw_set_color(argument[2]);  
		draw_text(xx+_i, yy+_i, argument[4]);  
		draw_text(xx-_i, yy-_i, argument[4]);  
		draw_text(xx,   yy+_i, argument[4]);  
		draw_text(xx+_i,   yy, argument[4]);  
		draw_text(xx,   yy-_i, argument[4]);  
		draw_text(xx-_i,   yy, argument[4]);  
		draw_text(xx-_i, yy+_i, argument[4]);  
		draw_text(xx+_i, yy-_i, argument[4]);
		_i += 1;
	}
  
	//Text  
	draw_set_color(argument[3]);  
	draw_text(xx, yy, argument[4]);  
	
	draw_set_color(_color);
	draw_set_font(_font);
}
catch (_exception){
	show_message("Error en fnc_texto_dialogo: "+_exception.longMessage);}
}
