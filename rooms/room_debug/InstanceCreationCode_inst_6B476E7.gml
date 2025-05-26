/// @description 

try
{
	usable_en_secuencias[0] = "1,2";
	textos_denegados[$ "1,3"] = "No quiero en la escena 1 secuencia 3";
	textos_denegados[$ "1"] = "No quiero en la escena 1";
	destino = room_despacho;
}
catch (_exception)
{
	show_message("Error en inst_6B476E7: "+_exception.longMessage);
}