
// velocidade .05 - Limite = 10 chance 45%
//espera_tiro 10% - Limite = 20 chance 45%
//Level_tiro  1   - Limite = 5  chance 10%

velocidade = 5;
espera_tiro = room_speed;
level_tiro = 1;
//SISTEMA DE VIDA
vida = 3;
escudos = 3;
meu_escudo=noone;

atirando = function()
{
	var fire = keyboard_check(vk_space)
	var y_tiro = y -sprite_height/3;
	
	if (fire && alarm[0]==-1)
	{
	alarm[0]=espera_tiro;
		if (level_tiro == 1)
		{
			instance_create_layer(x,y_tiro,"Tiro",obj_tiro_player);
		}
		else if (level_tiro == 2)
		{
			//criando tiro na asa esquerda e na asa direita
			var tiro_1 = instance_create_layer(x-60,y_tiro+10,"Tiro",obj_tiro2_player);
			tiro_1.hspeed =-5;
			var tiro_2 = instance_create_layer(x+60,y_tiro+10,"Tiro",obj_tiro2_player);
			tiro_2.hspeed = 5;
		}
		else if (level_tiro == 3)
		{
			instance_create_layer(x,y_tiro,"Tiro",obj_tiro_player);
			tiro2();
		}
		else if (level_tiro == 4)
		{
			tiro4();	
		}
		else if (level_tiro == 5)
		{
			tiro2();
			tiro4();
		}
	}
}

tiro2 = function()
{
	var y_tiro = y -sprite_height/3;
	var tiro_1 = instance_create_layer(x-60,y_tiro+10,"Tiro",obj_tiro2_player);
	tiro_1.hspeed =-5;
	var tiro_2 = instance_create_layer(x+60,y_tiro+10,"Tiro",obj_tiro2_player);
	tiro_2.hspeed = 5;	
}

tiro4 = function()
{
	var y_tiro = y -sprite_height/3;
	var direcao =75;
	repeat(3)
	{
	var meu_tiro = instance_create_layer(x,y_tiro+10,"Tiro",obj_tiro_player);
	meu_tiro.direction = direcao;
	meu_tiro.image_angle = meu_tiro.direction -90;
	direcao += 15;
	
	}	
}
///@method level_up(chance)
level_up = function(_chance)
{
	if (_chance >= 90 )
	{
		//Aumentando o level do tiro Se o level do tiro for menor que 5
		if(level_tiro<5)
			{
			level_tiro++;
			}
			else
			{
				ganhando_pontos(100);
			}		
				
	}
		//Diminuindo o intervalo do tiro se o intervalo for maior que 20
		else if (_chance>=45)
		{
			if(espera_tiro>15)
			{
			espera_tiro*=0.9;
			}
			else
			{
				ganhando_pontos(10);
			}
		}
		//Aumentando a velocidade em 0.5 se for menor que 10
		else
		{
			if(velocidade<10)
			{
			velocidade+=.5;
			}
			else
			{
				ganhando_pontos(10);	
			}
		}

	
}

///@method perde_vida();
perde_vida = function()
{
	//Só vou perder vida se meu escudo é igual a noone
	if(!meu_escudo)
	{
	if(vida>0)
		{
		vida--;
		screenshake(5);
		}
	else
		{
		instance_destroy();
		screenshake(25);
		}
	}	
}
///@method cria_escudo
cria_escudo = function()
{
	var shield = keyboard_check_pressed(ord("E"));
	if (shield && escudos>0 && meu_escudo==noone)
	{
		var escudo = instance_create_layer(x,y,"Escudo",obj_shield)	
		escudo.alvo= id;
		//Avisando que esse escudo é o meu escudo
		meu_escudo=escudo;
		//Diminuindo a quantidade de escudos
		escudos--;
	}
}
