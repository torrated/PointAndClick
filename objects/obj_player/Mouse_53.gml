/// @description 

try {

if (fnc_raton_en_pantalla())
{
	if !(instance_exists(obj_texto))
	{
		with (obj_destino)
		{
			instance_destroy(self,true);
		}
	
		speed = velocidad;
		
		if (proxima_accion == noone)
		{
			objeto = instance_position(mouse_x,mouse_y,[obj_interaccionable,obj_salir_zona]);
			destino = instance_create_layer(mouse_x,y,layer,obj_destino);
            if (instance_exists(objeto) && objeto.object_index == obj_salir_zona)
                proxima_accion = ACCIONES_PLAYER.SALIR;
		}
		else
		{
			objeto = instance_position(obj_ui.x,obj_ui.y,obj_interaccionable);
			destino = instance_create_layer(obj_ui.x,y,layer,obj_destino);
		}
			
	
		if (x < destino.x)
			direction = 0;

		if (x > destino.x)
			direction = 180;
	}
	else
		event_perform_object(obj_texto,ev_mouse,ev_left_press);
}

}
catch (_exception){
	show_message("Error en obj_player.GlobalLeftPressed: "+_exception.longMessage);}