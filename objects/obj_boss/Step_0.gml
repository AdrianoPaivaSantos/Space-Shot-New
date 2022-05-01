/// @description Insert description here
// Debug do estado atual

//Alternando os estados

espera_estado--;
if(espera_estado<=0)
{
	//vou escolher outro estado
	estado_atual = choose("estado 1","estado 2","estado 3");
	//Fazendo o valor do espera_estado ter um valor alto denovo
	espera_estado = delay_estado;
}

//Iniciando o estado 1
if(estado_atual=="estado 1")
{
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
	
}
