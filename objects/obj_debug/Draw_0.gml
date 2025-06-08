/// @description 

try
{
	if (obj_settings.debug)
	{
		with (obj_player)
		{
			draw_text(x,y,$"proxima_accion:{proxima_accion}");
	    }
	
		with(obj_interaccionable)
		{
			//draw_text(x,y,$"depth:{depth}");
		}
	
		with(obj_ui)
		{
			//draw_text(0,0,$"{x},{y}");
		}
		
		with (obj_historia)
		{
			draw_text(0,1000,$"Escena: {escena}\nSecuencia: {secuencia}");
		}
		
		with (obj_settings)
		{
			//draw_text(0,1050,$"idioma: {idioma_seleccionado}");
		}
		
		with (obj_destino)
		{
			draw_text(0,1050,$"x,y: {x},{y}");
		}
		
		with (obj_inventario)
		{
			draw_text(0,100,$"inventario:{array_length(inventario)}");
		}
        
        //draw_text(0,150,$"numero de obj_inventario:{instance_number(obj_inventario)}");
	}
}
catch (_exception)
{
	show_message("Error en obj_Debug.draw "+_exception.longMessage);
}