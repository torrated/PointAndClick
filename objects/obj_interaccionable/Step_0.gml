/// @description Hace o dice algo dependiendo de la accion del player

try
{
    if (interaccion) // personaje quiere hacer algo 
    {
		if (fnc_secuencia_activa(usable_en_secuencias)) // se puede usar en esta escena+secuencia
		{
	        if (se_puede[accion]) // comprueba si es una accion valida para esta instancia y la ejecuta
	        {
	            switch(accion) 
	            {
	                case ACCIONES_PLAYER.COGER: //estas acciones estás definidas en CREATE y pueden sobreescribirse por instancia
						fnc_coger();
	                    break;
	                case ACCIONES_PLAYER.USAR:
	                    fnc_usar();
	                    break;
					case ACCIONES_PLAYER.HABLAR:
	                    fnc_hablar();
	                    break;
					case ACCIONES_PLAYER.VER:
	                    fnc_ver();
	                    break;
	            }
	        }
	        else //si no es una accion válida, player dice algo
	        {
	            fnc_personaje_dice(personaje,textos[accion]);
	        }
		}
		else // no se puede usar en esta secuencia
		{
			fnc_personaje_dice(obj_player,fnc_texto_denegado(textos_denegados));
			interaccion = false;
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