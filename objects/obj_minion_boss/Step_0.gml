/// @description Insert description here
// ficando visivel
if(image_alpha<1 && primeiro_tiro==false)
{
image_alpha+= 1/room_speed;
}

//Aumentando a escala enquanto ela for menor que 1.5
if(escala>1.5 || escala<1)
{
	aumento_escala*=-1;	
}

//Diminuindo a escala enquanto ela for maior que 0.5
escala+=aumento_escala;
