/// @description Guarda las cosas que hay que guardar durante la partida

try
{
	punto_aparicion = obj_punto_aparicion_1;
}
catch (_exception)
{
	show_message("Error en obj_juego.Create: "+_exception.longMessage);
}