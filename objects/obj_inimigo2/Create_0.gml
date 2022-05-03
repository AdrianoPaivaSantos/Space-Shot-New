/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();
chance=30;
pontos=20;
posso_me_mover = true;
atirando=function()
{
if (y>=0)
	{
	instance_create_layer(x,y+ sprite_height/3,"Tiro",obj_tiro_inimigo2);
	//criando o som do tiro
	audio_play_sound(sfx_laser1,1,false);
	}
}
