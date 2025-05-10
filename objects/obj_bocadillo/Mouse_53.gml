try {

linea += 1;
if (linea >= array_length(texto))
	instance_destroy(self,true);
	
}
catch (_exception){
	show_message("Error en obj_bocadillo.MouseLeftPressed: "+_exception.longMessage);}