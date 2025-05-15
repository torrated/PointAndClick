/// @description 

try {

objetos_a_cargar = [
	{
		objecto: obj_settings,
		cargado: false
	},
	{
		objecto: obj_debug,
		cargado: false
	},
	{
		objecto: obj_ui,
		cargado: false
	}
];
carga_correcta = true;

tiempo_alarma = 15;
alarm[0] = tiempo_alarma;
i_alarma = 0;

}
catch (_exception){
	show_message("Error en obj_startup.create: "+_exception.longMessage);}