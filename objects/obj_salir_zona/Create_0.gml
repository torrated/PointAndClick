/// @description Permite cambiar de room

try
{
	destino = noone;
	interaccion = false;
	acciones = [ACCIONES_PLAYER.SALIR];
	
	usable_en_secuencias = []; //contiene las escenas y secuencias en que se puede salir, en formato x,x
	
	textos_denegados = {}; //contiene los textos cuando se intenta salir en una secuencia no permitida
	textos_denegados[$ "0,0"] = "No puedo hacer eso"; // 0,0 es el texto por defecto
}
catch (_exception)
{
	show_message("Error en obj_salir_zona.Create: "+_exception.longMessage);
	}