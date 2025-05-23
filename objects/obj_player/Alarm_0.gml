/// @description Inicia la interaccion con el objeto de destino

try
{
	if (objeto <> noone)
	{
		objeto.interaccion = true;
		objeto.accion = proxima_accion;
	}
	// no hay else porque, si hay una accion pero no un objeto, no hace ni dice nada
	objeto = noone;
	proxima_accion = noone;
}
catch (_exception)
{
	show_message("Error en obj_player.alarm0: "+_exception.longMessage);
}