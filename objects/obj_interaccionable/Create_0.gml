/// @description 

try
{
    interaccion = false; // se activa cuando el player ha llegado hasta el objeto y quiere hacer una accion
    outline = false; //para el reborde luminoso
    accion = noone; //la accion que player quiere hacer en el objeto
    acciones = []; // acciones que admite el objeto. Hay que completarlo por instancia
    
    personaje = obj_player;
    
    se_puede[ACCIONES_PLAYER.COGER] = false // para saber si es una accion valida. Se activa por instancia
    se_puede[ACCIONES_PLAYER.HABLAR] = false;
    se_puede[ACCIONES_PLAYER.USAR] = false;
    se_puede[ACCIONES_PLAYER.VER] = true; // es el único verdadero por defecto porque todos los objetos deberian poder verse
    se_puede[ACCIONES_PLAYER.USAR_DESDE_INVENTARIO] = false;

	// los textos[] son para cuando se_puede[] con esa accion es falso
    textos[ACCIONES_PLAYER.COGER] = "No puedo coger eso";
    textos[ACCIONES_PLAYER.HABLAR] = "No puedo hablar con eso";
    textos[ACCIONES_PLAYER.USAR] = "No puedo usar eso";
    textos[ACCIONES_PLAYER.VER] = "No puedo ver eso";
    textos[ACCIONES_PLAYER.USAR_DESDE_INVENTARIO] = "No puedo usar eso desde el inventario";
    
}
catch (_exception)
{
	show_message("Error en obj_interaccionable.Create: "+_exception.longMessage);
}