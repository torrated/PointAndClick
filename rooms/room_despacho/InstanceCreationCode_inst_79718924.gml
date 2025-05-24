/// @description 

try
{
    se_puede[ACCIONES_PLAYER.COGER] = false // para saber si es una accion valida. Se activa por instancia
    se_puede[ACCIONES_PLAYER.HABLAR] = false;
    se_puede[ACCIONES_PLAYER.USAR] = false;
    se_puede[ACCIONES_PLAYER.VER] = false;
    se_puede[ACCIONES_PLAYER.USAR_DESDE_INVENTARIO] = false;

	// los textos[] son para cuando se_puede[] con esa accion es falso
    textos[ACCIONES_PLAYER.COGER] = obj_textos.pila_papeles[0][$ obj_settings.idioma];
    textos[ACCIONES_PLAYER.HABLAR] = obj_textos.pila_papeles[1][$ obj_settings.idioma];
    textos[ACCIONES_PLAYER.USAR] = obj_textos.generico[2][$ obj_settings.idioma];
    textos[ACCIONES_PLAYER.VER] = obj_textos.pila_papeles[2][$ obj_settings.idioma];
    textos[ACCIONES_PLAYER.USAR_DESDE_INVENTARIO] = obj_textos.generico[4][$ obj_settings.idioma];
    
}
catch (_exception)
{
	show_message("Error en inst_79718924.Create: "+_exception.longMessage);
}