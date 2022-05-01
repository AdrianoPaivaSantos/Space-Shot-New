/// @description Insert description here
/* Estados
Estado 1 parado dando o tiro 2
Estado 2 se movendo dando o tiro 1
Estado 3 parado intercalando entre o tiro 1 e 2
Estado 4 (especial) invunerável criando minions que curam o boss
*/

estado_atual = choose("estado 1","estado 2","estado 3");
delay_tiro = room_speed/2;
espera_tiro = 0;
delay_estado = room_speed*15;
espera_estado = delay_estado;
velocidade_horizontal = 3;
vida_max = 2000;
vida_atual = vida_max/2;


//Criando Função do tiro 2
tiro_02 = function()
{
	instance_create_layer(x,y+ 80,"Tiro",obj_tiro_inimigo2);	
}
//Criando Função do tiro 1
///@method tiro 01 direita se true se false esquerda
tiro_01 = function(_direita)
{
	if(_direita)
	{
		var _posx = 160;	
	}
	else
	{
		var _posx = -160;	
	}
	instance_create_layer(x + _posx,y + 10,"Tiro",obj_tiro_inimigo);
}
//Metodo do estado 1
estado_01 = function()
{
	espera_tiro--;
	//códigos do estado 1
	if(espera_tiro<=0)
	{
		instance_create_layer(x,y+ 80,"Tiro",obj_tiro_inimigo2);
		espera_tiro = delay_tiro;
		
	}
}

//Metodo do estado 2
estado_02 = function()
{
	x += velocidade_horizontal;
	if(x>=1632)|| (x<=288)
	{
		velocidade_horizontal*=-1;	
	}
	
	espera_tiro--;
	//códigos do estado 1
	if(espera_tiro<=0)
	{
		tiro_01(false);
		tiro_01(true);
		//instance_create_layer(x-160,y+10,"Tiro",obj_tiro_inimigo);
		//instance_create_layer(x+160,y,"Tiro",obj_tiro_inimigo);
		espera_tiro = delay_tiro*2;
		
	}
}

//Metodo Tiro 3
estado_03 = function()
{
	espera_tiro--;
	//códigos do estado 3
	if(espera_tiro<=0)
	{
		tiro_02();
		espera_tiro = delay_tiro*2;
	}
	
	//códigos do estado 1
	if(espera_tiro==delay_tiro)
	{
		tiro_01(false);				
				
	}
	if(espera_tiro==delay_tiro+round(delay_tiro/2))
	{
						
		tiro_01(true);
		
	}
	
}
