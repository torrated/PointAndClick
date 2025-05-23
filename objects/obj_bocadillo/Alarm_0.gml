/// @description Destruye el bocadillo

try
{
	instance_destroy(self,true);
}
catch (_exception)
{
	show_message("Error en obj_bocadillo.alarm0: "+_exception.longMessage);
}