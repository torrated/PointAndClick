/// @description 

try
{

    if (interaccion)
    {
        if (se_puede[accion])
        {
            switch(accion)
            {
                case ACCIONES_PLAYER.COGER:
                    array_insert(obj_player.inventario,-1,self);
                    instance_destroy(self,true);
                    break;
                case ACCIONES_PLAYER.USAR:
                    show_message("usar");
                    break;
            }
        }
        else {
        {
            fnc_personaje_dice(personaje,textos[accion]);
        }
        }
    	
    	interaccion = false;
    	accion = noone;
    }

}
catch (_exception){
	show_message("Error en obj_interaccionable.Step: "+_exception.longMessage);}