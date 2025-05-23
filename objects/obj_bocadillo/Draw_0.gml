/// @description Mira qué texto hay que escribir y llama a la funcion que lo hace

try
{
	#region GUARDA DRAW SETTINGS ACTUALES
	var _font = draw_get_font();
	var _halign = draw_get_halign();
	#endregion
	
	draw_set_font(Font1);
	draw_set_halign(fa_center);

	for (var _i = 0; _i <= linea; _i++)
	{
		var _x = x;
		var _length_in_pixels = string_length(texto[_i])*22;
	
		if (room_width - _x < _length_in_pixels/2) // con esto el texto no se sale por la derecha
			_x = room_width - _length_in_pixels/2;
	
		if (_x < _length_in_pixels/2) // con esto el texto no se sale por la izquierda
			_x = _length_in_pixels/2;
		
		fnc_texto_dialogo(_x,y,c_black,c_white,texto[_i]);
	}

	#region RESTAURA LOS DRAW SETTINGS
	draw_set_font(_font);
	draw_set_halign(_halign);
	#endregion
}
catch (_exception)
{
	show_message("Error en obj_bocadillo.draw: "+_exception.longMessage);
}