/// @description 

try {

var _color = draw_get_color();
draw_set_color(c_white);
draw_text(0,0,"Cargando objetos...");

for (var _i = 0; _i <= i_alarma; _i++)
{
	var _cargado = "ok";
	if !(objetos_a_cargar[_i].cargado)
		_cargado = "not ok"
	
	draw_text(0,32+(32*_i),$"{objetos_a_cargar[_i].objecto}: {_cargado}");
}

draw_set_color(_color);

}
catch (_exception){
	show_message("Error en obj_startup.draw: "+_exception.longMessage);}