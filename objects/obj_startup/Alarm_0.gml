/// @description 

try {

if (instance_exists(objetos_a_cargar[i_alarma].objecto))
{
	objetos_a_cargar[i_alarma].cargado = true;
	i_alarma +=1;
}
else
	carga_correcta = false;

if (i_alarma < array_length(objetos_a_cargar))
	alarm[0] = tiempo_alarma;
else
{
	i_alarma -= 1;
	if (carga_correcta)
		if (obj_settings.debug)
			room_goto(room_debug)
		else
			room_goto(room_despacho);
}

}
catch (_exception){
	show_message("Error en obj_startup.alarm0: "+_exception.longMessage);}