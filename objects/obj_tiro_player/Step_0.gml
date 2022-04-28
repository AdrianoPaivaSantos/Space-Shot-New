/// @description Insert description here
// Destruindo o tiro ao sair da Room
if (y<=-200)
{
	position_destroy(x,y);
	
}

//Diminuindo a escala do tiro
// lerp valor que eu tenho valor para chegar % de aproximação
//lerp é uma função de aproximação
image_xscale = lerp(image_xscale,1,0.5);
image_yscale = lerp(image_yscale,1,0.5);
