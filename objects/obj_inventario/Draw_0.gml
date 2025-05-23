/// @description Dibuja el inventario y sus objetos
try
{
	if (outline)
		fnc_resaltar(x,y,sprite_index,image_xscale,image_yscale,image_alpha);
	else
		draw_self(); // para dibujar el maletín

	if (inventario_abierto)
	{
	    var _color = draw_get_color();
	    var _alpha = draw_get_alpha();
		
	    var _scale = 87; //tamaño de los cuadros
    
	    draw_set_color(c_black);
	    draw_set_alpha(0.5);
	    draw_rectangle(96,5,room_width-(_scale/2),96,false); // este es el recuadro largo negro de background
		
		var _x_left = 0; // esta y el siguiente son para poder dibujos los cuadros en un FOR
	    var _x_right = 0;
	    draw_set_color(c_white);
    
	    for (var _i = 0; _i <= 19; _i++) // 19 porque es el número máximo de cuadros que entran
	    {
	        _x_left = 98+(89*_i);
	        _x_right = 98+(89*_i)+_scale;
	        draw_set_alpha(0.5);
	        draw_rectangle(_x_left,7,_x_right,94,true); //dibuja el recuadro
        
	        if (array_length(inventario) >= _i+1) //dibuja los objetos del inventario
	        {
	            draw_set_alpha(_alpha);
	            var _angle = inventario[_i].image_angle;
	            var _blend = inventario[_i].image_blend;
	            var _image_alpha = inventario[_i].image_alpha;
	            var _width = sprite_get_width(inventario[_i].sprite_index);
	            var _height = sprite_get_height(inventario[_i].sprite_index);
            
	            var _new_scale_x = 0;
	            var _new_scale_y = 0;
	            var _new_scale = 0;
	            if (_width > 87 || _height > 87)
	            {
	                _new_scale_x = _scale / _width;
	                _new_scale_y = _scale / _height;
	                _new_scale = min(_new_scale_x,_new_scale_y);
	            }
	            else
	            {
	                _new_scale_x = _scale / _width;
	                _new_scale_y = _scale / _height;
	                _new_scale = max(_new_scale_x,_new_scale_y);
	            }
            
	            draw_sprite_ext(inventario[_i].sprite_index,0,(_x_right+_x_left)/2,94,_new_scale,_new_scale,_angle,_blend,_image_alpha);
	        }
	    }
    
	    draw_set_color(_color);
	    draw_set_alpha(_alpha);
	}
}
catch (_exception)
{
	show_message("Error en obj_inventario.Draw: "+_exception.longMessage);
}