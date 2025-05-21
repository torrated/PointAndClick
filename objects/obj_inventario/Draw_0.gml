/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

// Inherit the parent event
event_inherited();

if (inventario_abierto)
{
    var _color = draw_get_color();
    var _alpha = draw_get_alpha();
    draw_set_color(c_black);
    draw_set_alpha(0.5);
    draw_rectangle(96,5,room_width-5,96,false);
    draw_set_color(_color);
    draw_set_alpha(_alpha);
}
