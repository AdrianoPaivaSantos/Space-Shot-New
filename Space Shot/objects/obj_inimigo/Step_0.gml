/// @description Insert description here
//Destruindo o inimigo após sair do tamanho da room + 100
if (y > room_height + 100)
{
	instance_destroy(id,false);
}
