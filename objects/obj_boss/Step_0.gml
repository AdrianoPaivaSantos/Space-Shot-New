/// @description Insert description here
// Debug do estado atual

//Alternando os estados
//checando se eu não estou no estado 4
if(estado_atual!="estado 4")
{
sprite_index = spr_boss;	
}
muda_estado();
//estado_atual="estado 4";
//Iniciando o estado 1
if(estado_atual=="estado 1")
{
	//códigos estado 1
	estado_01();
}

else if(estado_atual=="estado 2")
{
	
	//códigos estado 2
	estado_02();
	
}
else if(estado_atual=="estado 3")
{
	//códigos estado 3
	estado_03();
}
else if(estado_atual=="estado 4")
{
	//códigos estado 4
	estado_04();
}
