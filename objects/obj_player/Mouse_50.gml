/// @description 

try {

if (fnc_raton_en_pantalla())
{
	with (obj_destino)
	{
		instance_destroy(self,true);
	}
	
	speed = velocidad;
	objeto = instance_position(mouse_x,mouse_y,obj_interaccionable);
	destino = instance_create_layer(mouse_x,y,layer,obj_destino);
	
	if (x < destino.x)
		direction = 0;

	if (x > destino.x)
		direction = 180;
}

}
catch (_exception){
	show_message("Error en obj_player.GlobalLeftDown: "+_exception.longMessage);}