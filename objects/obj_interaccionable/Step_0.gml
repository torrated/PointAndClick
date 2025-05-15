/// @description 

try {

if (interaccion)
{
	var _bocadillo = noone;
	switch(accion)
	{
		case ACCIONES_PLAYER.VER:	fnc_personaje_dice(personaje,"mirar");
									break;
		case ACCIONES_PLAYER.USAR:	fnc_personaje_dice(personaje,"usar");
									break;
		case ACCIONES_PLAYER.COGER:	fnc_personaje_dice(personaje,"coger");
									break;
		case ACCIONES_PLAYER.HABLAR:fnc_personaje_dice(personaje,"hablar");
									break;
	}
	interaccion = false;
	accion = noone;
}

}
catch (_exception){
	show_message("Error en obj_interaccionable.Step: "+_exception.longMessage);}