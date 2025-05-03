/// @description 

try {

if (instance_exists(follow))
{
	x = follow.x;
	y = follow.y;
}

}
catch (_exception){
	show_message("Error en obj_sombra.step: "+_exception.longMessage);}