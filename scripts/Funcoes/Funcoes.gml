// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function screenshake(_shake)
{
	//criando o screenshake
	var screen = instance_create_layer(0,0, "Escudo",obj_screen_shake)
	screen.shake=_shake;
}

//Fazendo função Ganhando_pontos(_pontos)
function ganhando_pontos(_pontos)
{
	if(instance_exists(obj_controle))
	{
		obj_controle.ganha_pontos(_pontos);	
	}
}

//Destruindo a sequence
function destroi_seq()
{
	//tentando pegar a sequencia da minha layer
	var elementos = layer_get_all_elements("boss_entrada");
	layer_sequence_destroy(elementos[0]);
	instance_create_layer(960,288,"Boss",obj_boss);
}
//criando a sequencia do player
function cria_seq()
{
	if(instance_exists(obj_player))
	{
		layer_sequence_create("Sequences",obj_player.x,	obj_player.y,seq_fim_fase);
		//destruindo o player
		instance_destroy(obj_player,false);
	}
	if(instance_exists(obj_controle))
	{
		obj_controle.level_completo=true;	
	}
}

//Impedindo que o control execute a tela de game over

function cria_transicao()
{
	var _transicao = instance_create_layer(0, 0, "player",obj_transicao);
	_transicao.destino=rm_inicio;
}
