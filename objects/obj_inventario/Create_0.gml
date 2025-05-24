/// @description

try
{
	inventario_abierto = false;
	outline = false;
	
	inventario = []; // el inventario de IDs de las instancias
	scale = 87; //tamaño de los cuadros
	altura = 94;
	
	///@description Añade un objeto al inventario y lo desactiva
	function Add_Inventario(_id)
	{
		array_insert(inventario,-1,_id);
		instance_deactivate_object(_id);
	}

	///@description Muestra en pantalla los objetos del inventario, escalados
	function Abrir_Inventario()
	{
		inventario_abierto = true;
		var _x_left = 0;
		var _x_right = 0;

		if (array_length(inventario) > 0) //coloca las instancias del inventario en pantalla
	    {
			for (var _i = 0; _i < array_length(inventario); _i++)
			{
				_x_left = 98+(89*_i);
				_x_right = 98+(89*_i)+scale;

			    var _width = sprite_get_width(inventario[_i].sprite_index);
			    var _height = sprite_get_height(inventario[_i].sprite_index);
			    var _new_scale_x = 0;
			    var _new_scale_y = 0;
			    var _new_scale = 0;
			    if (_width > scale || _height > scale) //hay que hacerlo más pequeño
			    {
			        _new_scale_x = scale / _width;
			        _new_scale_y = scale / _height;
			        _new_scale = min(_new_scale_x,_new_scale_y);
			    }
			    else //hay que hacerlo más grande
			    {
			        _new_scale_x = scale / _width;
			        _new_scale_y = scale / _height;
			        _new_scale = max(_new_scale_x,_new_scale_y);
			    }

				inventario[_i].x = (_x_right+_x_left)/2;
				inventario[_i].y = altura;
				inventario[_i].image_xscale = _new_scale;
				inventario[_i].image_yscale = _new_scale;
				instance_activate_object(inventario[_i]);
			}
	    }
	}
	
	function Cerrar_Inventario()
	{
		inventario_abierto = false;
		if (array_length(inventario) > 0) // deshabilita las instancias del inventario en pantalla
	    {
			for (var _i = 0; _i < array_length(inventario); _i++)
			{
				instance_deactivate_object(inventario[_i]);
			}
		}
	}
}
catch (_exception)
{
	show_message("Error en obj_inventario.create: "+_exception.longMessage);
}