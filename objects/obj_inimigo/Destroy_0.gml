/// @description Insert description here
// Criando a explosão após o player morrer
instance_create_layer(x,y,"Inimigos",obj_explosao_player);

if (instance_exists(obj_controle))
	{
	obj_controle.ganha_pontos(pontos);
	}
	
	dropa_item(chance)
