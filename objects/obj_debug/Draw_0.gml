/// @description 

try {

if (obj_settings.debug)
{
	with (obj_player)
	{
		draw_text(x,y,$"inventario:{array_length(inventario)}");
    }
	
	with(obj_interaccionable)
	{
		//draw_text(x,y,$"interaccion:{interaccion}");
		//draw_text(x,y-30,$"acciones:{acciones}");
	}
	
	with(obj_ui)
	{
		//draw_text(0,0,$"{x},{y}");
	}
}

}
catch (_exception){
	show_message("Error en obj_Debug.draw "+_exception.longMessage);}