/// @description Dibuja _instancia con o sin outline dependiendo de _outline
/// @param {Bool}		_outline
/// @param {Id.Instance}	_instancia
function Dibuja_outline_o_normal(_outline,_instancia)
{
	try
	{
	    if (_outline)
	    {
	        with (_instancia)
	        {
	            fnc_resaltar(x,y,sprite_index,image_xscale,image_yscale,image_alpha);
	        }
	    }
		else
			draw_self(); 
	}
	catch (_exception)
	{
		show_message("Error en Dibuja_outline_o_normal: "+_exception.longMessage);
	}
};
/*******************************************************************************************/
/// @description Activa el outline solo en la intancia con menor depth
function Desactiva_outline_si_depth_no_menor()
{
	try
	{
		for (var _i = 0; _i < instance_count; _i++;)
		{
			var _temp_id = instance_id_get(_i);
			with (_temp_id)
			{
			    outline = false;
			}
		};

		var _dslist = ds_list_create();
		instance_position_list(mouse_x,mouse_y,all,_dslist,false);
		if (ds_list_size(_dslist) == 1)
			ds_list_find_value(_dslist,0).outline = true;
		if (ds_list_size(_dslist) > 1)
		{
			var _depth = ds_list_find_value(_dslist,0).depth;
			var _index = 0;
			for (var _i = 1; _i < ds_list_size(_dslist); _i++)
			{
				if (ds_list_find_value(_dslist,_i).depth < _depth)
				{
					_depth = ds_list_find_value(_dslist,_i).depth;
					_index = _i;
				}
			}
			ds_list_find_value(_dslist,_index).outline = true;
		}
	}
	catch (_exception)
	{
		show_message("Error en Desactiva_outline_si_depth_no_menor: "+_exception.longMessage);
	}
};