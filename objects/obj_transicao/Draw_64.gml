/// @description Insert description here
// escurecendo a tela

//pegando informações da gui
//Desenhando o retangulo com o valor do meu alpha
draw_set_alpha(alpha);
draw_set_color(c_black);
var x2 = display_get_gui_width();
var y2 = display_get_gui_height();
draw_rectangle(0,0,x2,y2, false);
draw_set_color(c_white);
draw_set_alpha(1);
