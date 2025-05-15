/// @description 

try {

if (mostrar)
{
	if !(seleccionado)
		instance_destroy(self,true);
}

}
catch (_exception){
	show_message("Error en obj_ui.GlobalLeftPressed: "+_exception.longMessage);}