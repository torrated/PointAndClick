/// @description Se mira qué accion se debe hacer

try
{
	if (fnc_raton_en_pantalla())
	{
		if (estado == ESTADOS_PLAYER.INVENTARIO_ABIERTO) // hay que cerrar el inventario o mirar si hemos clicado en un objeto
		{
			estado = ESTADOS_PLAYER.NORMAL;
			obj_inventario.Cerrar_Inventario();
			exit;
		}

		if (estado == ESTADOS_PLAYER.HABLANDO_TEXTO) // hay que escribir algo mas o mirar si se ha seleccionado una opcion
		{
			// event_perform_object(obj_texto,ev_mouse,ev_left_press);
			estado = ESTADOS_PLAYER.NORMAL; // re-mirar esto, quizas el estado deberia ser HABLANDO_TEXTO aun
			exit;
		}
		
		if (estado == ESTADOS_PLAYER.HABLANDO_BOCADILLO) // ¿hay que cerrar el bocadillo al hacer clic? ¿siguiente linea?
		{
			estado = ESTADOS_PLAYER.NORMAL;
			exit;
		}
		
		if (estado == ESTADOS_PLAYER.NORMAL) // hay que mirar si se ha clicado algo o solo hay que moverse
		{
			if (proxima_accion == noone || proxima_accion == ACCIONES_PLAYER.SALIR) // no se ha sacado el UI con botón derecho
			{
				objeto = instance_position(mouse_x,mouse_y,[obj_interaccionable,obj_salir_zona,obj_inventario,obj_npc]); // ¿obj_texto?
	            
				if ((instance_exists(objeto) && objeto.object_index <> obj_inventario)// no se ha clicado en nada: el personaje tiene un destino
	                or !(instance_exists(objeto))) 
					{
						with (obj_destino) { instance_destroy(self); };
		    			destino = instance_create_layer(mouse_x,y,layer,obj_destino);
						destino.personaje = id;
					}
					
	            if (instance_exists(objeto) && objeto.object_index == obj_salir_zona) // se va a cambiar de zona
	                proxima_accion = ACCIONES_PLAYER.SALIR; 
					
	            if (instance_exists(objeto) && objeto.object_index == obj_inventario) // se abre el inventario
				{
	                estado = ESTADOS_PLAYER.INVENTARIO_ABIERTO;
					obj_inventario.Abrir_Inventario();
				}
			}
			else // accion seleccionada con el UI
			{
				objeto = instance_position(obj_ui.x,obj_ui.y,obj_interaccionable); //obj_interaccionable son los unicos que deberian reaccionar a UI
	            with (obj_destino) { instance_destroy(self); };
				destino = instance_create_layer(obj_ui.x,y,layer,obj_destino);
				destino.personaje = id;
			}

			#region EL PERSONAJE RECIBE DIRECCION Y VELOCIDAD SI APLICA
			if (instance_exists(destino) && x < destino.x)
				direction = 0;

			if (instance_exists(destino) && x > destino.x)
				direction = 180;
        
	        if (instance_exists(destino))
	            speed = velocidad;
			#endregion
		}
	}
}
catch (_exception)
{
	show_message("Error en obj_player.GlobalLeftPressed: "+_exception.longMessage);
}