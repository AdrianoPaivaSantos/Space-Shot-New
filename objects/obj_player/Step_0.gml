/// @description Insert description here
// MOVENDO PARA ESQUERDA
/*var up, down, left, right;

up = keyboard_check(ord("W"));
down = keyboard_check(ord("S"));
left = keyboard_check(ord("A"));
right = keyboard_check(ord("D"));
*/

//Criando o escudo ao apertar a tecla E e SE eu tenho mais do que 0 escudos
cria_escudo();

/*
//Movendo o player com base no calculo de x e y e então multiplicando a velocidade
y+=(down-up)*velocidade;
x+=(right-left)*velocidade;
*/
atirando();

//Impedindo o player de sair da tela


x=clamp(x,64,1856);
y=clamp(y,64,1024);



