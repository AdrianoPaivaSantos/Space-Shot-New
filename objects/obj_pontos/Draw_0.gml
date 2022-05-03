/// @description Insert description here
// Desenhando a maior pontuação
//variavel temporaria para segurar o valor dos pontos
var _pontos = round(pontos);
draw_set_font(fnt_botoes);
draw_text(722,280,"Maior Pontuação: " + string(_pontos));
draw_text(722,380,"Inimigos mortos: " + string(global.total_inimigos));
draw_text(722,480,"Total de mortes: " + string(global.total_mortes));
draw_set_font(-1);

//fazendo pontos chegar até o valor do max.pontos
//Se pontos for menor do que max pontos eu aumento o valor dele
//pegando 5% do max pontos e adicionando o valor em potos enquanto for menor que max.pontos
if(pontos<global.max_pontos)
{
	//aumentando o valor de pontos em 5% até o max pontos
	var _incrementa_pontos = global.max_pontos*0.005;//é meio % do max,pontos
	pontos +=_incrementa_pontos;

}
