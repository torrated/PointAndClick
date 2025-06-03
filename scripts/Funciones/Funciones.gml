/// @description             Indica si el raton esta en el Room (true) o no (false)
/// @return {Bool}
function fnc_raton_en_pantalla()
{
	try
	{
		return (mouse_x > 0 && mouse_x < room_width && mouse_y > 0 && mouse_y < room_height)
	}
	catch (_exception)
	{
		show_message("Error en fnc_raton_en_pantalla: "+_exception.longMessage);
	}
}


/// @description             Escribe en pantalla un texto de un color con un outline de otro color
function fnc_texto_dialogo(x, y, outline_color, string_color, string)
{
	try
	{
		var _color = draw_get_color();
		var _font = draw_get_font();
		draw_set_font(Font1);
		xx = argument[0];  
		yy = argument[1];  
  
		//Outline  
		var _i = 1;
		repeat(3)
		{
			draw_set_color(argument[2]);  
			draw_text(xx+_i, yy+_i, argument[4]);  
			draw_text(xx-_i, yy-_i, argument[4]);  
			draw_text(xx,   yy+_i, argument[4]);  
			draw_text(xx+_i,   yy, argument[4]);  
			draw_text(xx,   yy-_i, argument[4]);  
			draw_text(xx-_i,   yy, argument[4]);  
			draw_text(xx-_i, yy+_i, argument[4]);  
			draw_text(xx+_i, yy-_i, argument[4]);
			_i += 1;
		}
  
		//Text  
		draw_set_color(argument[3]);  
		draw_text(xx, yy, argument[4]);  
	
		draw_set_color(_color);
		draw_set_font(_font);
	}
	catch (_exception)
	{
		show_message("Error en fnc_texto_dialogo: "+_exception.longMessage);
	}
}


/// @description             Crea un outline blanco de un sprite
function fnc_resaltar(x, y, sprite, xscale, yscale, alpha)
{
	try{

		xx = argument[0];  
		yy = argument[1];

		//activa el shader
		shader_set(shader_blanco);

		//Outline  
		var _i = 1;
		repeat(2) //grosor del outline en pixels
		{ 
			draw_sprite_ext(sprite,0,xx+_i, yy+_i,xscale,yscale,0,c_white,alpha);
			draw_sprite_ext(sprite,0,xx-_i, yy-_i,xscale,yscale,0,c_white,alpha); 
			draw_sprite_ext(sprite,0,xx,   yy+_i,xscale,yscale,0,c_white,alpha); 
			draw_sprite_ext(sprite,0,xx+_i,   yy,xscale,yscale,0,c_white,alpha);
			draw_sprite_ext(sprite,0,xx,   yy-_i,xscale,yscale,0,c_white,alpha);
			draw_sprite_ext(sprite,0,xx-_i,   yy,xscale,yscale,0,c_white,alpha);
			draw_sprite_ext(sprite,0,xx-_i, yy+_i,xscale,yscale,0,c_white,alpha);
			draw_sprite_ext(sprite,0,xx+_i, yy-_i,xscale,yscale,0,c_white,alpha);
			_i += 1;
		}

		shader_reset();

		//sprite normal  
		draw_sprite_ext(sprite,0,xx, yy,xscale,yscale,0,c_white,alpha);  
	}
	catch (_exception)
	{
		show_message("Error en fnc_resaltar: "+_exception.longMessage);
	}
}


/// @description             Crea un mensaje sobre un personaje
function fnc_personaje_dice(personaje,texto,tiempo = 0)
{
	try
	{
		var _bocadillo = instance_create_layer(personaje.x,personaje.y-personaje.sprite_height,"Texto",obj_bocadillo);
		_bocadillo.texto[0] = texto;
		if (tiempo <> 0)
			_bocadillo.tiempo = tiempo;
	}
	catch (_exception)
	{
		show_message("Error en fnc_personaje_dice: "+_exception.longMessage);
	}
}


/// @description	Devuelve true o false dependiendo de si la escena y secuencia actuales estan contenidas en _array
function fnc_secuencia_activa(_array)
{
	try
	{
		return array_contains(_array,string(obj_historia.escena)+","+string(obj_historia.secuencia));
	}
	catch (_exception)
	{
		show_message("Error en fnc_secuencia_activa: "+_exception.longMessage);
	}
}

/// @description	Si hay un texto de denegacion para esta escena+secuencia hace que lo diga el personaje.
///					Si no lo hay, busca por sólo escena
///					Si no lo hay, hace el texto por defecto
function fnc_texto_denegado(_array)
{
	try
	{
		var _escena = string(obj_historia.escena);
		var _secuencia = string(obj_historia.secuencia);
		var _escena_secuencia = _escena+","+_secuencia;
		
		if (struct_exists(_array,_escena_secuencia)) //existe un texto especifico para esta escena+secuencia
			return textos_denegados[$ _escena_secuencia];
		else if (struct_exists(_array,_escena)) //existe un texto especifico para esta escena
				return textos_denegados[$ _escena];
			else
				return textos_denegados[$ "0,0"];
	}
	catch (_exception)
	{
		show_message("Error en fnc_texto_denegado: "+_exception.longMessage);
	}
}