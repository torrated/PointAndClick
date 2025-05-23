/// @description Muestra el menu en pantalla creando 4 instancias, distintas

try
{

	if !(mostrar) // para que solo el obj_ui principal cree 4 instancias
	{
		x = mouse_x; // se puede mover aquí porque no tiene sprite y no se ve
		y = mouse_y;
		
		top_right = instance_create_layer(mouse_x,mouse_y,layer,obj_ui);
		top_right.accion = ACCIONES_PLAYER.VER;
		top_right.mostrar = true;
		top_right.image_angle = 0;
		top_right.persistent = false;
		top_right.sprite_index = spr_acciones_ver;
	
		bottom_right = instance_create_layer(mouse_x,mouse_y,layer,obj_ui);
		bottom_right.accion = ACCIONES_PLAYER.USAR;
		bottom_right.mostrar = true;
		bottom_right.image_angle = 0;
		bottom_right.persistent = false;
		bottom_right.sprite_index = spr_acciones_usar;
	
		bottom_left = instance_create_layer(mouse_x,mouse_y,layer,obj_ui);
		bottom_left.accion = ACCIONES_PLAYER.COGER;
		bottom_left.mostrar = true;
		bottom_left.image_angle = 0;
		bottom_left.persistent = false;
		bottom_left.sprite_index = spr_acciones_coger;
	
		top_left = instance_create_layer(mouse_x,mouse_y,layer,obj_ui);
		top_left.accion = ACCIONES_PLAYER.HABLAR;
		top_left.mostrar = true;
		top_left.image_angle = 0;
		top_left.persistent = false;
		top_left.sprite_index = spr_acciones_hablar;
	}
	else
		instance_destroy(self,true); // si se hace clic derecho y el menu ya estaba mostrado, se destruye para mostrar otro
}
catch (_exception)
{
	show_message("Error en obj_ui.GlobalLeftPressed: "+_exception.longMessage);
}