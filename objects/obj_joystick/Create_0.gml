/// @description Insert description here
// You can write your code in this editor

dir = 0;
vel = 0;
max_vel = 5;

fazer = false;
image_alpha = 0;

toque_mult = function()
{
	for (var i = 0; i < 4; i++)
	{
		if (device_mouse_check_button(i, mb_left)) return true;
	}
	return false;
}