/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();
// mudando a direção depois que eu me movi x pixels
//checando se a minha posição atual é maior que a posição inicial +50
if (x > xstart + 50)||(x < xstart -50)
{
	//Inverter a velocidade horizontal
	hspeed*=-1;
}

