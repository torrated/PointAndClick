/// @description 

try {

if (obj_settings.debug)
	if (instance_exists(obj_texto))
		instance_destroy(obj_texto);
	else
	{
		var _texto = instance_create_layer(0,0,"Texto",obj_texto);
		_texto.texto[0] = "Mi nombre es Stilton,";
		_texto.texto[1] = "Gerónimo Stilton";
	}

}
catch (_exception){
	show_message("Error en obj_Debug.T "+_exception.longMessage);}