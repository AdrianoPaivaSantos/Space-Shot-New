/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();
//Achando a minha direção
//checando se o boss existe
if(instance_exists(obj_boss))
{
	//Vou na direção dele
	direction = point_direction(x,y,obj_boss.x,obj_boss.y);
	image_angle = direction+90;
}	

