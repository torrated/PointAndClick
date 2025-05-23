/// @description Si todos los objetos esperados están cargados, inicia el juego. Si no, se queda parado

try
{
	#region COMPROBACION DEL OBJETO DEL INDICE ACTUAL (i_alarma)
	// recorre el array de objetos. Si el objeto no existe, carga_correcta será falso. Si existe, pasa al siguiente
	if (instance_exists(objetos_a_cargar[i_alarma].objecto))
	{
		objetos_a_cargar[i_alarma].cargado = true;
		i_alarma += 1;
	}
	else
		carga_correcta = false;
	#endregion

	#region PASAR AL SIGUIENTE O TERMINAR
	//Si hay mas elementos en el array incrementa el indice y se re-llama
	//Si no, va a la primera sala, que depende de si estamos en modo Debug o no
	if (i_alarma < array_length(objetos_a_cargar))
		alarm[0] = tiempo_alarma;
	else
	{
		i_alarma -= 1;
		if (carga_correcta) // si la carga no es correcta se queda en room_startup
			if (obj_settings.debug)
				room_goto(room_debug)
			else
				room_goto(room_despacho);
	}
	#endregion

}
catch (_exception)
{
	show_message("Error en obj_startup.alarm0: "+_exception.longMessage);
}