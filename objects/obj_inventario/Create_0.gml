/// @description

try
{
	inventario_abierto = false;
	outline = false;
	
	inventario = []; // el inventario de objetos
    inventario_ids = []; // los IDs de las instancias
    inventario_nombres = []; // los nombres de los objetos
    
	scale = 87; //tamaño de los cuadros
	altura = 94;
	
	///@description Añade un objeto al inventario y lo desactiva
	function Add_Inventario(_id)
	{
		array_insert(inventario,-1,_id.object_index);
		array_insert(inventario_nombres,-1,_id.nombre);
		instance_destroy(_id,false);
	}

	///@description Muestra en pantalla los objetos del inventario, escalados
	function Abrir_Inventario()
	{
		inventario_abierto = true;
		var _x_left = 0;
		var _x_right = 0;

		if (array_length(inventario) > 0) //coloca los objetos del inventario en pantalla
	    {
			for (var _i = 0; _i < array_length(inventario); _i++)
			{
				_x_left = 98+(89*_i);
				_x_right = 98+(89*_i)+scale;
                inventario_ids[_i] = instance_create_layer(0,0,layer,inventario[_i]);
                inventario_ids[_i].depth -= 1;
                inventario_ids[_i].nombre = inventario_nombres[_i];
			    var _width = inventario_ids[_i].sprite_width;
			    var _height = inventario_ids[_i].sprite_height;
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

				inventario_ids[_i].x = (_x_right+_x_left)/2;
				inventario_ids[_i].y = altura;
				inventario_ids[_i].image_xscale = _new_scale;
				inventario_ids[_i].image_yscale = _new_scale;
			}
	    }
	}
	
	function Cerrar_Inventario()
	{
		inventario_abierto = false;
		if (array_length(inventario_ids) > 0) // destruye las instancias del inventario de ids
        {
			for (var _i = 0; _i < array_length(inventario_ids); _i++)
			{
				instance_destroy(inventario_ids[_i],false);
			}
		}
	}
}
catch (_exception)
{
	show_message("Error en obj_inventario.create: "+_exception.longMessage);
}