/// @description 

try {

objetos_a_cargar = [
	{
		objecto: obj_settings,
		cargado: false
	}
];
carga_correcta = true;

tiempo_alarma = 60;
alarm[0] = tiempo_alarma;
i_alarma = 0;

}
catch (_exception){
	show_message("Error en obj_startup.create: "+_exception.longMessage);}