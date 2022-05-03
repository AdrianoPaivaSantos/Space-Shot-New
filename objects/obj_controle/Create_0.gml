/// @description Insert description here
//Randomizando o jogo
randomize();


//Iniciando
alarm[0]= room_speed;

//Iniciando o sistema de pontos
global.pontos=0;
//Iniciando sistema de level
level=1;
proximo_level=100;

//Variável de controle para o game over
gameover_seq = noone;
criar_boss=true;
level_completo=false;

//Criando um método para ganhar pontos
///@method ganha_pontos(pontos)
ganha_pontos = function(_pontos)
	{
		global.pontos+=_pontos*level;
		
		if(global.pontos > proximo_level)
		{
			level++;
			proximo_level*=2;
		}
	}

//Criando método para gerar inimigos
cria_inimigo=function()
{
	// Criando os inimigos x1=32 x2=1888 y1=-64 y2=2688
	var xx = irandom_range(32,1888);
	//Aumentando o limite com base no level do jogo
	var yy = irandom_range(-96,-2688 - (level * 500));
	//Criando inimigo com base no level
	//A chance de criar um inimigo mais forte depende do level

	var chance = random_range(0,level);
	var inimigo = obj_inimigo;
	if (chance>2)
	{
		inimigo = obj_inimigo2;
	}
	instance_create_layer(xx,yy,"Inimigos",inimigo);

}
