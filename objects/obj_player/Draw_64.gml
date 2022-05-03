/// @description Insert description here


var altura_gui = display_get_gui_height();

//Desenhando a navezinha
//Repetindo o desenho na quantidade de vida que eu tenho
//Desenhando uma vida do lado da outra
var multiplicador = 0;
var espaco = 40;
repeat(vida)
{
//Primeira fica no 40, segundo fica no 40 + 20, terceiro fica no 40 + 40
//1º = 40 + 20 * 0 = 40
//2º = 40 + 20 * 1 = 60
//3º = 40 + 20 * 2 = 80
	draw_sprite_ext(spr_player,0,40+ espaco*multiplicador,80,0.3,0.3,0,c_white,0.5);
//Depois de desenhar aumenta o valor do multiplicador
	multiplicador++;
}
multiplicador =0;

repeat(escudos)
{
//Primeira fica no 40, segundo fica no 40 + 20, terceiro fica no 40 + 40
//1º = 40 + 20 * 0 = 40
//2º = 40 + 20 * 1 = 60
//3º = 40 + 20 * 2 = 80
	draw_sprite_ext(spr_shield,2,40 + espaco*multiplicador,130,0.3,0.3,0,c_white,0.5);
//Depois de desenhar aumenta o valor do multiplicador
	multiplicador++;
}
