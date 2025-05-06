/// @description 

try {

obj_texto.linea += 1;
if (obj_texto.linea >= array_length(obj_texto.texto))
	instance_destroy(obj_texto,true);
	
}
catch (_exception){
	show_message("Error en obj_texto.MouseLeftPressed: "+_exception.longMessage);}