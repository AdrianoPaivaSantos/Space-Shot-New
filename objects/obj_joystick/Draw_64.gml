/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

var _x1=160;
var _y1=640;
var _escala=1;
var _sprite_size = sprite_get_width(spr_joystick);

draw_sprite_ext(spr_joystick,0,_x1,_y1,_escala,_escala,0,c_white,.2);


var _mouse_x = device_mouse_x_to_gui(0);
var _mouse_y = device_mouse_y_to_gui(0);
var mouse_sobre = point_in_circle(_mouse_x,_mouse_y,_x1,_y1,_sprite_size/2*_escala);
var mouse_click = mouse_check_button(mb_left);


if(mouse_sobre||fazer)
{
	if(mouse_click)
	{
		fazer = true;
		vel = min(point_distance(_x1,_y1,_mouse_x,_mouse_y),(_sprite_size/2)*_escala);
		dir = point_direction(_x1,_y1,_mouse_x,_mouse_y);
		
	}

}

if(!mouse_click)
{
	fazer = false;
//fazendo voltar para o meio quando nao estiver controlando
	vel = lerp(vel,0,.1);
}

var _x2 = lengthdir_x(vel,dir);
var _y2 = lengthdir_y(vel,dir);

//Movendo o player
if(instance_exists(obj_player))
{
	var _val_max = (_sprite_size/2)*_escala;
	var _velh = (_x2/ _val_max)* max_vel;
	var _velv = (_y2/ _val_max)* max_vel;
	
	obj_player.velh = _velh;
	obj_player.velv = _velv;
	
}

//Desenhando a bolinha no Circulo
draw_sprite_ext(spr_joystick,0,_x1+_x2,_y1+_y2,_escala/4,_escala/4,0,c_white,.8);