try
{
	se_puede[ACCIONES_PLAYER.COGER] = true;
	nombre = "Teléfono";

	function fnc_coger()
	{
		obj_inventario.Add_Inventario(self.id);
		fnc_personaje_dice(obj_player,"Al coger este objeto se incrementa la secuencia.");
		obj_historia.secuencia += 1;
	}
}
catch (_exception)
{
	show_message("Error en inst_3593B8F5: "+_exception.longMessage);
}