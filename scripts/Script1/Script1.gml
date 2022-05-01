// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function screenshake(_shake)
{
	//criando o screenshake
	var screen = instance_create_layer(0,0, "Escudo",obj_screen_shake)
	screen.shake=_shake;
}

//Fazendo função Ganhando_pontos(_pontos)
function ganhando_pontos(_pontos)
{
	if(instance_exists(obj_controle))
	{
		obj_controle.ganha_pontos(_pontos);	
	}
}
