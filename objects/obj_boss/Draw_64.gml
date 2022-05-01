/// @description Insert description here
// Desenhando a barra de vida do boss
//Convertendo o valor atual da vida do boss em um valor de 0 e 100
//Vida atual dividido por vida max vai retornar um valor entre 0 e 1
//
var _vida=(vida_atual/vida_max)*100;
draw_healthbar(200,20,1080,30,_vida,c_black,c_maroon,c_lime,0,true,1)
