/// @description 

try {

if (mostrar)
	draw_sprite_ext(sprite_index,0,x+offset_x,y+offset_y,image_xscale,image_yscale,image_angle,image_blend,image_alpha);

}
catch (_exception){
	show_message("Error en obj_ui.draw: "+_exception.longMessage);}