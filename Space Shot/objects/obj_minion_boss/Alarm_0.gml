/// @description Insert description here
// criando o tiro
instance_create_layer(x,y,"Tiro",obj_tiro_minion);
alarm[0]=room_speed/2;

//Avisando que já dei o primeiro tiro
primeiro_tiro=true;
