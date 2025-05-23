/// @description Menú de accionas al pulsar clic derecho

try
{
	mostrar = false; // una instancia de este objeto siempre existe y no tiene sprite. Esta es la que siempre tendra mostrar false

	alpha_inicial = 0.5;
	image_alpha = alpha_inicial;
	offset_x = 0; // para que las secciones de desplacen un poco al pasar por encima
	offset_y = 0;

	top_right = noone;
	bottom_right = noone;
	bottom_left = noone;
	top_left = noone;

	enum ACCIONES_PLAYER {
		HABLAR, // menú
		VER, // menú
		USAR, // menú
		COGER, // menú
		SALIR, // para cambiar de room. Usado por obj_salir_zona
	    USAR_DESDE_INVENTARIO // para objetos que se han cogido y están en el inventario
	}

	accion = noone;
	seleccionado = false;
}
catch (_exception)
{
	show_message("Error en obj_ui.Create: "+_exception.longMessage);
}