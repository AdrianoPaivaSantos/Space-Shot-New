/// @description Insert description here
//Diminuindo o image index
if(image_index>0)
{
	image_index--;
	image_alpha-=.2;
}
else
{
	instance_destroy();	
}
//reiniciando o alarme
alarm[0]=room_speed;
