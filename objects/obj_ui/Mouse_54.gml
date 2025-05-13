/// @description 

try {

if !(mostrar) // para que solo lo haga el obj principal
{
	top_right = instance_create_layer(mouse_x,mouse_y,layer,obj_ui);
	top_right.mostrar = true;
	top_right.image_angle = 0;
	top_right.persistent = false;
	top_right.sprite_index = spr_acciones_ver;
	
	bottom_right = instance_create_layer(mouse_x,mouse_y,layer,obj_ui);
	bottom_right.mostrar = true;
	bottom_right.image_angle = 0;
	bottom_right.persistent = false;
	bottom_right.sprite_index = spr_acciones_usar;
	
	bottom_left = instance_create_layer(mouse_x,mouse_y,layer,obj_ui);
	bottom_left.mostrar = true;
	bottom_left.image_angle = 0;
	bottom_left.persistent = false;
	bottom_left.sprite_index = spr_acciones_coger;
	
	top_left = instance_create_layer(mouse_x,mouse_y,layer,obj_ui);
	top_left.mostrar = true;
	top_left.image_angle = 0;
	top_left.persistent = false;
	top_left.sprite_index = spr_acciones_hablar;
}
else
	instance_destroy(self,true);

}
catch (_exception){
	show_message("Error en obj_ui.GlobalLeftPressed: "+_exception.longMessage);}