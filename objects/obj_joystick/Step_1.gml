/// @description Insert description here
// You can write your code in this editor

var _spr_w = sprite_get_width(spr_joy) * image_xscale;
var xx = lengthdir_x(vel, dir);
var yy = lengthdir_y(vel, dir);
//Passando as informações para o player
if (instance_exists(target))
{
	var _velh = (xx / (_spr_w/2)) * max_vel;
	var _velv = (yy / (_spr_w/2)) * max_vel;
	
	target.velh = _velh;
	target.velv = _velv;
}