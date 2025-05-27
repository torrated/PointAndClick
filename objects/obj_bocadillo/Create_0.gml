/// @description Pone texto sobre un personaje u objeto

try
{
	texto = []; // lineas de texto. Cada linea es una posicion del array
	linea = 0; // linea actual siendo escrita
	alarm[0] = 180; // frames hasta que desaparece el texto de la pantalla
	follow = noone; // por si el personaje se mueve al hablar y hay que seguirlo
}
catch (_exception)
{
	show_message("Error en obj_bocadillo.create: "+_exception.longMessage);
}