/// @description Insert description here
// Checando se o player existe
if(!instance_exists(obj_player) && !gameover_seq && level_completo == false)
{//Criando apenas uma sequence
	gameover_seq = layer_sequence_create("Sequences",room_width/2,room_height/2,sq_game_over);	
	audio_play_sound(sfx_lose,2,false);
}

