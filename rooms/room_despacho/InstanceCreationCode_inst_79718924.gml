/// @description 

try
{
	usable_en_secuencias = ["1,1","1,2","1,3","1,4"]; 
	
    se_puede[ACCIONES_PLAYER.COGER] = false // para saber si es una accion valida. Se activa por instancia
    se_puede[ACCIONES_PLAYER.HABLAR] = false;
    se_puede[ACCIONES_PLAYER.USAR] = true;
    se_puede[ACCIONES_PLAYER.VER] = true;
    se_puede[ACCIONES_PLAYER.USAR_DESDE_INVENTARIO] = false;

	// los textos[] son para cuando se_puede[] con esa accion es falso
    textos[ACCIONES_PLAYER.COGER] = obj_textos.pila_papeles[0][$ obj_settings.idioma];
    textos[ACCIONES_PLAYER.HABLAR] = obj_textos.pila_papeles[1][$ obj_settings.idioma];
    textos[ACCIONES_PLAYER.USAR] = obj_textos.pila_papeles[3][$ obj_settings.idioma];
    textos[ACCIONES_PLAYER.VER] = obj_textos.pila_papeles[2][$ obj_settings.idioma];
    textos[ACCIONES_PLAYER.USAR_DESDE_INVENTARIO] = obj_textos.generico[4][$ obj_settings.idioma];
    
	function fnc_usar()
	{
		switch(obj_historia.secuencia)
		{
			case 1:	fnc_personaje_dice(obj_player,obj_textos.pila_papeles[4][$ obj_settings.idioma]);
					obj_historia.fnc_incrementa_secuencia();
					break;
			case 2:	fnc_personaje_dice(obj_player,obj_textos.pila_papeles[5][$ obj_settings.idioma]);
					obj_historia.fnc_incrementa_secuencia();
					break;
			case 3:	fnc_personaje_dice(obj_player,obj_textos.pila_papeles[6][$ obj_settings.idioma]);
					obj_historia.fnc_incrementa_secuencia();
					se_puede[ACCIONES_PLAYER.USAR] = false;
					se_puede[ACCIONES_PLAYER.COGER] = true;
					break;
		};
	};
	
	function fnc_coger()
	{
		fnc_personaje_dice(obj_player,obj_textos.pila_papeles[8][$ obj_settings.idioma]);
		var _curriculum = instance_create_layer(x,y,layer,obj_curriculum);
		_curriculum.nombre = "Currículum";
		obj_inventario.Add_Inventario(_curriculum.id);
		se_puede[ACCIONES_PLAYER.COGER] = false;
		textos[ACCIONES_PLAYER.COGER] = obj_textos.pila_papeles[7][$ obj_settings.idioma];
	};
	
	function fnc_ver()
	{
		fnc_personaje_dice(obj_player,obj_textos.pila_papeles[2][$ obj_settings.idioma]);
	};
}
catch (_exception)
{
	show_message("Error en inst_79718924.Create: "+_exception.longMessage);
}