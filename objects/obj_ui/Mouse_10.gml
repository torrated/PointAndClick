/// @description 

try {

if (mostrar)
{
	if (sprite_index == spr_acciones_ver || sprite_index == spr_acciones_usar)
		offset_x = 3;
	else
		offset_x = -3;
	if (sprite_index == spr_acciones_ver || sprite_index == spr_acciones_hablar)
		offset_y = -3;
	else
		offset_y = 3;
	
	image_alpha = 1.0;
	seleccionado = true;
}

}
catch (_exception){
	show_message("Error en obj_ui.MouseEnter: "+_exception.longMessage);}