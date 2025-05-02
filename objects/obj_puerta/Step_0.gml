/// @description 

try {

if (interaccion)
	room_goto(destino);

}
catch (_exception){
	show_message("Error en obj_puerta.step: "+_exception.longMessage);}