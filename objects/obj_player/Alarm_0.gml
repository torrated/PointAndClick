/// @description 

try {

if (objeto <> noone)
	{
		if !(array_contains(objeto.acciones,proxima_accion))
			fnc_personaje_dice(obj_player,"No puedo hacer eso");
		else
		{
			objeto.interaccion = true;
			objeto.accion = proxima_accion;
		}
			
		objeto = noone;
		proxima_accion = noone;
	}

}
catch (_exception){
	show_message("Error en obj_interaccionable.alarm0: "+_exception.longMessage);}