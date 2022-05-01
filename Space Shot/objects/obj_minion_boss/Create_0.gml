/// @description Insert description here
//criando o tiro
//Iniciando o alarme
alarm[0]=room_speed;
//Iniciando invisivel
image_alpha=0;
primeiro_tiro = false;
vida=10;
escala=1;
aumento_escala=0.01;
//Checando se eu colidi com outro minion
if (place_meeting(x,y,obj_minion_boss))
{
	//Se eu colidi com outro minion eu subo 60 pixels
	y-=128;
}
