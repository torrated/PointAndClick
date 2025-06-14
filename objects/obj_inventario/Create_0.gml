/// @description

try
{
	inventario_abierto = false;
	outline = false;
	
	inventario = []; // el inventario de objetos
    inventario_struct = {};
    
	scale = 87; //tamaño de los cuadros
	altura = 94;
    
    seleccionado = false; //para marcar cuando tenemos seleccionado un objeto del inventario
    objeto_seleccionado = inventario_struct; //el objeto del inventario seleccionado
	
	///@description Añade un objeto al inventario y lo desactiva
	function Add_Inventario(_id)
	{
        inventario_struct.objeto = _id.object_index;
        inventario_struct.nombre = _id.nombre;
        inventario_struct._id = 0; //se completa luego al crear la instancia
        inventario_struct.seleccionado = false; //para marcar cuando se hace click en él
        
		array_insert(inventario,-1,inventario_struct);
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
                inventario[_i]._id = instance_create_layer(0,0,layer,inventario[_i].objeto);
                inventario[_i]._id.depth -= 1;
			    var _width = inventario[_i]._id.sprite_width;
			    var _height = inventario[_i]._id.sprite_height;
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

				inventario[_i]._id.x = (_x_right+_x_left)/2;
				inventario[_i]._id.y = altura;
				inventario[_i]._id.image_xscale = _new_scale;
				inventario[_i]._id.image_yscale = _new_scale;
			}
	    }
	}
	
	function Cerrar_Inventario()
	{
		inventario_abierto = false;
		if (array_length(inventario) > 0) // destruye las instancias del inventario de ids
        {
			for (var _i = 0; _i < array_length(inventario); _i++)
			{
				instance_destroy(inventario[_i]._id,false);
			}
		}
	}
    
    ///@description Marca un objeto del inventario como seleccionado y cambia el cursor
    function Seleccionar_Objeto()
    {
        var _objeto = instance_position(mouse_x,mouse_y,[obj_interaccionable]);
        if (instance_exists(_objeto))
        {
            var _encontrado = false;
            var _i = 0;
            for (_i = 0; _i < array_length(inventario); _i++)
            {
                if (_objeto.id == inventario[_i]._id)
                {
                    _encontrado = true;
                    break;
                }
            }
            if (_encontrado)
            {
                inventario[_i].seleccionado = true;
                inventario[_i].se_puede[ACCIONES_PLAYER.USAR_DESDE_INVENTARIO] = true;
                inventario[_i].acciones = [ACCIONES_PLAYER.USAR_DESDE_INVENTARIO];
                seleccionado = true;
                objeto_seleccionado = inventario[_i];
                cursor_sprite = inventario[_i]._id.sprite_index;
                obj_player.proxima_accion = ACCIONES_PLAYER.USAR_DESDE_INVENTARIO;
            }
        }
    }
    
    ///@description desactiva el objeto activado
    function Deseleccionar_Objeto()
    {
        seleccionado = false;
        objeto_seleccionado = noone;
        cursor_sprite = obj_settings.cursor_flecha;
    }
}
catch (_exception)
{
	show_message("Error en obj_inventario.create: "+_exception.longMessage);
}