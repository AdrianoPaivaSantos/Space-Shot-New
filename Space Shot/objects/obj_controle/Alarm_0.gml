/// @description Insert description here
// Criando os inimigos x1=32 x2=1888 y1=-64 y2=2688


//Se não existe o objeto inimigo
if(!instance_exists(obj_inimigo))
{
	var repetir=5*level;
	//cria inimigos se ele não existem
	repeat(repetir)
	{
	cria_inimigo();	
	}
}

alarm[0]= room_speed*10;

