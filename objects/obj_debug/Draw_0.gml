/// @description 

try {

if (obj_settings.debug)
{
	with (obj_player)
	{
		//draw_text(x,y,$"accion:{proxima_accion}");
		//draw_text(x,y+20,$"objeto:{objeto}");
	}
	
	with(obj_interaccionable)
	{
		//draw_text(bbox_left,bbox_top,$"{bbox_left},{bbox_top}");
		//draw_text(bbox_right,bbox_top,$"{bbox_right},{bbox_top}");
		//draw_text(bbox_left,bbox_bottom,$"{bbox_left},{bbox_bottom}");
		//draw_text(bbox_right,bbox_bottom,$"{bbox_right},{bbox_bottom}");
	}
	
	with(obj_ui)
	{
		//draw_text(0,0,$"{x},{y}");
	}
}

}
catch (_exception){
	show_message("Error en obj_Debug.draw "+_exception.longMessage);}