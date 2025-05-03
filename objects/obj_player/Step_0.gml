/// @description 

try {

if (speed > 0)
{
	sprite_index = sprite_caminando;
	if (direction = 0)
		image_xscale = 1;
	else
		image_xscale = -1;
}
else
	sprite_index = sprite_idle;

}
catch (_exception){
	show_message("Error en obj_player.step: "+_exception.longMessage);}