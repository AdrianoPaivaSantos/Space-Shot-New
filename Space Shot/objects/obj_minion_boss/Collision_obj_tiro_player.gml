/// @description Insert description here
if(vida>0)
{
	vida--;
	//diminuindo a transparencia
	image_alpha-=0.08;
	aumento_escala*=1.1;
}
else
{
	instance_destroy();	
}
instance_destroy(other);
