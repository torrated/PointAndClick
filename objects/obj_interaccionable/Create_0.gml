/// @description 

try
{
    interaccion = false; // se activa cuando el player ha llegado hasta el objeto y quiere hacer una accion
	numero_interacciones = 0; // por si hay que llevar la cuenta
    outline = false; //para el reborde luminoso
    accion = noone; //la accion que player quiere hacer en el objeto
    acciones = []; // acciones que admite el objeto. Hay que completarlo por instancia
    
    personaje = obj_player;
    
    se_puede[ACCIONES_PLAYER.COGER] = false // para saber si es una accion valida. Se activa por instancia
    se_puede[ACCIONES_PLAYER.HABLAR] = false;
    se_puede[ACCIONES_PLAYER.USAR] = false;
    se_puede[ACCIONES_PLAYER.VER] = false;
    se_puede[ACCIONES_PLAYER.USAR_DESDE_INVENTARIO] = false;

	// los textos[] son para cuando se_puede[] con esa accion es falso
    textos[ACCIONES_PLAYER.COGER] = obj_textos.generico[0][$ obj_settings.idioma];
    textos[ACCIONES_PLAYER.HABLAR] = obj_textos.generico[1][$ obj_settings.idioma];
    textos[ACCIONES_PLAYER.USAR] = obj_textos.generico[2][$ obj_settings.idioma];
    textos[ACCIONES_PLAYER.VER] = obj_textos.generico[3][$ obj_settings.idioma];
    textos[ACCIONES_PLAYER.USAR_DESDE_INVENTARIO] = obj_textos.generico[4][$ obj_settings.idioma];

	usable_en_secuencias = ["1,1"]; //contiene las escenas y secuencias en que se puede usar, en formato x,x
	
	textos_denegados = {}; //contiene los textos cuando se intenta usar en una secuencia no permitida
	textos_denegados[$ "0,0"] = "No puedo hacer eso en esta secuencia"; // 0,0 es el texto por defecto

	function fnc_hablar()
	{
		fnc_personaje_dice(personaje,"Voy a hablar con él");
	};
	
	function fnc_usar()
	{
		fnc_personaje_dice(personaje,"Lo voy a usar");
	};
	
	function fnc_ver()
	{
		fnc_personaje_dice(personaje,"Te digo su descripcion");
	};
	
	function fnc_coger()
	{
		obj_inventario.Add_Inventario(self.id);
	};
}
catch (_exception)
{
	show_message("Error en obj_interaccionable.Create: "+_exception.longMessage);
}