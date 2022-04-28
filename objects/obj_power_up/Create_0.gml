/// @description Insert description here
//Criando uma chance entre 0 e 100 para ele decidir qual vai ser o power up
chance = random(100); // chance vai ficar entre 1 e 100
// se o valor de chanve for 90 ou mais ela cria o power up da espera tiro
// se o valor de chance for de 45 ou mais ela cria o power up da velocidade
//senão ele cria o power up do level do tiro
speed=1.5;
direction = irandom(359);

//Iniciando um alarme para fazer o power up sumir
alarm[0] = room_speed;

if (chance>=90)
{
	cor = c_red;	
}
else if (chance >=45)
{
	cor = c_aqua;	
}
else
{
	cor = c_lime;	
}
