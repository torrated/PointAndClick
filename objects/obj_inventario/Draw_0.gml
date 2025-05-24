/// @description Dibuja fondo del inventario y los recuadros
try
{
	if (outline)
		fnc_resaltar(x,y,sprite_index,image_xscale,image_yscale,image_alpha);
	else
		draw_self(); // para dibujar el maletín

	if (inventario_abierto && array_length(inventario) > 0)
	{
	    var _color = draw_get_color();
	    var _alpha = draw_get_alpha();
    
	    draw_set_color(c_black);
	    draw_set_alpha(0.5);
	    draw_rectangle(96,5,100+(89*(array_length(inventario)-1))+scale,96,false); // este es el recuadro largo negro de background
		
		var _x_left = 0; // esta y el siguiente son para poder dibujos los cuadros en un FOR
	    var _x_right = 0;
	    draw_set_color(c_white);
    
	    for (var _i = 0; _i < array_length(inventario); _i++)
	    {
	        _x_left = 98+(89*_i);
	        _x_right = 98+(89*_i)+scale;
	        draw_set_alpha(0.5);
	        draw_rectangle(_x_left,7,_x_right,94,true); //dibuja el recuadro
	    }
    
	    draw_set_color(_color);
	    draw_set_alpha(_alpha);
	}
}
catch (_exception)
{
	show_message("Error en obj_inventario.Draw: "+_exception.longMessage);
}