/// @description 

try {

	x = 2;
	y = 912;
	image_xscale = room_width - 4;
	image_yscale = room_height - y - 2;

	texto = [];
	texto_1_linea = "";

	linea = 0;
}
catch (_exception){
	show_message("Error en obj_texto.create: "+_exception.longMessage);}