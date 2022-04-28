/// @description Insert description here
event_inherited();
if (y>room_height/3 && posso_me_mover==true)
{
	if( x<room_width/2)
	{
	
		hspeed=2;
		posso_me_mover=false;
	}
	else
	{
	
		hspeed=-2;
		posso_me_mover=false;
	}
}
