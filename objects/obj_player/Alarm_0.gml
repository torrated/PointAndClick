/// @description 

try {

if (objeto <> noone)
	if (image_index >= image_number/2)
	{
		if !(array_contains(objeto.acciones,proxima_accion))
		{
			var _bocadillo = instance_create_layer(obj_player.x,obj_player.y-obj_player.sprite_height,"Texto",obj_bocadillo);
			_bocadillo.texto[0] = "No puedo hacer eso";
		}
		else
			objeto.interaccion = true;
		objeto = noone;
		proxima_accion = noone;
		x_accion = 0;
		y_accion = 0;
	}
	else
		alarm[0] = 1;

}
catch (_exception){
	show_message("Error en obj_interaccionable.alarm0: "+_exception.longMessage);}