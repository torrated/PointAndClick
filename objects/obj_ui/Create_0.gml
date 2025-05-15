/// @description 

try {

mostrar = false;

alpha_inicial = 0.5;
image_alpha = alpha_inicial;
offset_x= 0;
offset_y = 0;

top_right = noone;
bottom_right = noone;
bottom_left = noone;
top_left = noone;

enum ACCIONES_PLAYER {
	HABLAR,
	VER,
	USAR,
	COGER
}

accion = noone;
seleccionado = false;

}
catch (_exception){
	show_message("Error en obj_ui.Create: "+_exception.longMessage);}