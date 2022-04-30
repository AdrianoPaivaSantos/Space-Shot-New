/// @description Insert description here
// movendo a tela
view_xport [0] = random_range(-shake, shake);
view_yport [0] = random_range(-shake, shake);

//Diminuindo o valor do Screenshake
//Multiplicando ele por o.95 perdendo 5% a cada step
shake*=.9;

//Se o valor do shake for menor que 0.5 então ele se destroi
if(shake<0.5)
{
	instance_destroy();	
}
