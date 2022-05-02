/// @description Insert description here
// Criando a animação de morte
var screenshake = instance_create_layer(0,0,layer,obj_screen_shake);
screenshake.shake = 25;
layer_sequence_create("Boss_morte",x, room_height/2,seq_morte_boss);
//Aumentando o total de inimigos mortos
global.total_inimigos++;
ganhando_pontos(200);
