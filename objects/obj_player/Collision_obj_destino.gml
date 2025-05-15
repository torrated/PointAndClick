/// @description 

try {

speed = 0;

if (proxima_accion <> noone)
	alarm[0] = 1;
	
instance_destroy(other,true);

}
catch (_exception){
	show_message("Error en obj_player.colision_objDestino: "+_exception.longMessage);}