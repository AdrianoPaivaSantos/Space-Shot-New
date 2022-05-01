/// @description Insert description here
// sistema de perder vida do boss
if(estado_atual !="estado 4")
{
	if (vida_atual>0)
	{
		vida_atual--;
	}
	else
	{
		instance_destroy();	
	}
		instance_destroy(other);
}
