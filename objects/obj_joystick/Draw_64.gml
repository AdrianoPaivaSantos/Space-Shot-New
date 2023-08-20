/// @description Insert description here
// You can write your code in this editor


var _spr_w = sprite_get_width(sprite_index) * image_xscale;

var _scal = camera_get_view_width(view_camera[0]) / view_wport[0];

var _mouse_x = device_mouse_x_to_gui(0);
var _mouse_y = device_mouse_y_to_gui(0);
var _x1 = xstart / _scal;
var _y1 = ystart / _scal;


draw_sprite_ext(sprite_index, 0, _x1, _y1, image_xscale / _scal, image_yscale / _scal, image_angle, image_blend, .2);


//Desenhando o bagui

//Definindo a posição do bagui

var mouse_sobre = point_in_circle(_mouse_x, _mouse_y, _x1, _y1, _spr_w/2);
var mouse_click = toque_mult();

draw_circle(_x1, _y1, (_spr_w/2) / _scal, 1);

//Achando a distância do mouse para a posição
if (mouse_sobre or fazer)
{
	if (mouse_click)
	{
		fazer = true;
		vel = min(point_distance(_x1, _y1, _mouse_x, _mouse_y), (_spr_w/2) / _scal);
		dir = point_direction(_x1, _y1, _mouse_x, _mouse_y);
	}
}
if (!mouse_click)
{
	fazer = false;
	vel = lerp(vel, 0, .1);
}
var xx = lengthdir_x(vel, dir);
var yy = lengthdir_y(vel, dir);

draw_sprite_ext(sprite_index, 0, _x1 + xx, _y1 + yy, (image_xscale / _scal) / 4, (image_yscale / _scal) / 4, image_angle, image_blend, .8);