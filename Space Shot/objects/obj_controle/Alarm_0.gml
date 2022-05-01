/// @description Insert description here
// Criando os inimigos x1=32 x2=1888 y1=-64 y2=2688


//Se não existe o objeto inimigo
if(!instance_exists(obj_inimigo))
{
	var repetir=5*level;
	//cria inimigos se ele não existem
	if(level<10)
	{
		repeat(repetir)
		{
		cria_inimigo();	
		}
	}
	else
	{ //Se eu posso criar o boss cria o boss
		if(criar_boss==true)
		//Cria o boss
		layer_sequence_create("boss_entrada",960,574,seq_entrada_boss);	
		criar_boss=false;
	}
}

alarm[0]= room_speed*10;

