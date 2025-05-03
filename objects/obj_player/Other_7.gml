/// @description 

try {

if (sprite_index == sprite_tocar)
	sprite_index = sprite_idle;

}
catch (_exception){
	show_message("Error en obj_player.AnimationEnd: "+_exception.longMessage);}