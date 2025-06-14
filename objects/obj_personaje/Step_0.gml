/// @description Selecciona el sprite correcto en funcion de la velocidad

try
{
	if (speed > 0)
	{
		sprite_index = sprite_caminando;
		if (direction = 0)
			image_xscale = 1;
		else
			image_xscale = -1;
	}
	else
	{
		sprite_index = sprite_idle;
		image_index = 0;
	}
    
    if (interaccion)
    {
        interaccion = false;
        obj_inventario.Deseleccionar_Objeto();
    }
}
catch (_exception)
{
	show_message("Error en obj_personaje.step: "+_exception.longMessage);
}