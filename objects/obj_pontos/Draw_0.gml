/// @description Insert description here
// Desenhando a maior pontuação
//variavel temporaria para segurar o valor dos pontos
var _pontos = round(global.pontos);
draw_set_font(fnt_botoes);
draw_text(1370,40,"Highest Score : " + string(_pontos));
draw_text(1370,100,"Dead Enemies : " + string(global.total_inimigos));
draw_text(1370,160,"Total Deaths : " + string(global.total_mortes));

draw_set_font(-1);

//fazendo pontos chegar até o valor do max.pontos
//Se pontos for menor do que max pontos eu aumento o valor dele
//pegando 5% do max pontos e adicionando o valor em potos enquanto for menor que max.pontos
if(global.pontos<global.max_pontos)
{
	//aumentando o valor de pontos em 5% até o max pontos
	var _incrementa_pontos = global.max_pontos*0.005;//é meio % do max,pontos
	global.pontos +=_incrementa_pontos;

}
