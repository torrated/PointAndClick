/// @description 

try {

if (objeto <> noone)
	if (image_index >= image_number/2)
	{
		objeto.interaccion = !objeto.interaccion;
		objeto = noone;
	}
	else
		alarm[0] = 1;

}
catch (_exception){
	show_message("Error en obj_interaccionable.alarm0: "+_exception.longMessage);}