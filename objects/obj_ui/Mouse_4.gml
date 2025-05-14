/// @description 

try {

if (mostrar)
{
	if (seleccionado)
	{
		obj_player.proxima_accion = accion;
	}
	
	instance_destroy(self,true);
}

}
catch (_exception){
	show_message("Error en obj_ui.GlobalLeftPressed: "+_exception.longMessage);}