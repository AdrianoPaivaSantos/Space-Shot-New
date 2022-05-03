/// @description Insert description here
// You can write your code in this editor
vspeed=2;

//Chance de dropar item = 20%
chance=22;
pontos=10;
alarm[0] = random_range(1,3)*room_speed;

//Checando se estou colidindo com algum outro inimigo
//Se eu colidir com alguém eu me destruo
if (place_meeting(x,y,obj_inimigo))
{
	instance_destroy(id, false);
}

atirando=function()
{
if (y>=0)
	{
	instance_create_layer(x,y+ sprite_height/3,"Tiro",obj_tiro_inimigo);
	//criando o som do tiro
	audio_play_sound(sfx_laser1,1,false);
	
	}
}
///@method dropa_item(chance_de_dropar_em_porcentagem)
dropa_item = function(_chance)
{
	var valor = random(100);
	//Se o valor for menor do que a chance ele cria o item
	if (valor < _chance && y>96)
	{
		instance_create_layer(x,y,"Tiro",obj_power_up);
	}
}
