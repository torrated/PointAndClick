/// @description Objetos persistentes a cargar e inicia la Alarm 0

try
{
	#region DEFINE OBJETOS A CARGAR
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
		},
		{
			objecto: obj_textos,
			cargado: false
		},
		{
			objecto: obj_historia,
			cargado: false
		},
		{
			objecto: obj_juego,
			cargado: false
		},
		{
			objecto: obj_mouse,
			cargado: false
		}
	];
	#endregion

	carga_correcta = true; // Alarm[0] la pone a false si alguno no está presente en room_startup
	
	#region INICIA LA COMPROBACION
	tiempo_alarma = 15; // tiempo en frames entre comprobaciones para que no sea instantaneo
	alarm[0] = tiempo_alarma;
	i_alarma = 0; //indice del primer elemento del array
	#endregion
}
catch (_exception)
{
	show_message("Error en obj_startup.create: "+_exception.longMessage);
}