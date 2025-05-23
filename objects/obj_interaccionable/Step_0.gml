/// @description Hace o dice algo dependiendo de la accion del player

try
{
    if (interaccion) // personaje quiere hacer algo 
    {
        if (se_puede[accion]) // comprueba si es una accion valida para esta instancia
        {
            switch(accion)
            {
                case ACCIONES_PLAYER.COGER:
                    array_insert(obj_player.inventario,-1,self);
                    instance_destroy(self,true);
                    break;
                case ACCIONES_PLAYER.USAR:
                    fnc_personaje_dice(personaje,"Lo voy a usar");
                    break;
				case ACCIONES_PLAYER.HABLAR:
                    fnc_personaje_dice(personaje,"Voy a hablar con él");
                    break;
				case ACCIONES_PLAYER.VER:
                    fnc_personaje_dice(personaje,"Te digo su descripcion");
                    break;
            }
        }
        else //si no es una accion válida, player dice algo
        {
            fnc_personaje_dice(personaje,textos[accion]);
        }
	}

	// reseteamos
    interaccion = false;
    accion = noone;
}
catch (_exception)
{
	show_message("Error en obj_interaccionable.Step: "+_exception.longMessage);
}