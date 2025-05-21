/// @description 

try
{

    if (interaccion)
    {
        if (inventario_abierto) //si esta abierto y se clica, se cierra
            inventario_abierto = false;
        else 
            inventario_abierto = true;
    	interaccion = false;
    	accion = noone;
    }

}
catch (_exception){
	show_message("Error en obj_inventario.Step: "+_exception.longMessage);}