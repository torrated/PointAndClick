/// @description 

try {


speed = 0;
if (objeto <> noone)
{
	image_index = 0;
	sprite_index = sprite_tocar;
	objeto.interaccion = true;
	objeto = noone;
}
instance_destroy(other,true);

}
catch (_exception){
	show_message("Error en obj_player.colision_objDestino: "+_exception.longMessage);}