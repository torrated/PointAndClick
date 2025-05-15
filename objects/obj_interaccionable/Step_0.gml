/// @description 

try {

if (interaccion)
{
	fnc_personaje_dice(personaje,textos[accion]);
	interaccion = false;
	accion = noone;
}

}
catch (_exception){
	show_message("Error en obj_interaccionable.Step: "+_exception.longMessage);}