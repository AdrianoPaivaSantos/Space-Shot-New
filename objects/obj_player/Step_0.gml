/// @description Insert description here
// MOVENDO PARA ESQUERDA
var up, down, left, right, shield;

up = keyboard_check(ord("W"));
down = keyboard_check(ord("S"));
left = keyboard_check(ord("A"));
right = keyboard_check(ord("D"));
shield = keyboard_check_pressed(ord("E"));
//Criando o escudo ao apertar a tecla E e SE eu tenho mais do que 0 escudos
if (shield && escudos>0)
{
	var escudo = instance_create_layer(x,y,"Escudo",obj_shield)	
	escudo.alvo= id;
	//Diminuindo a quantidade de escudos
	escudos--;
}


//Movendo o player com base no calculo de x e y e então multiplicando a velocidade
y+=(down-up)*velocidade;
x+=(right-left)*velocidade;

atirando();

if(vida<0)
{
	instance_destroy();	
}

