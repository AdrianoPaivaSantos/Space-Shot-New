/// @description Insert description here
// Eu vou me desenhar (tiro)

draw_self();

//Desenhar o brilho do tiro
gpu_set_blendmode(bm_add);
draw_sprite_ext(brilho,image_index,x,y,image_xscale*0.3,image_yscale*0.3,image_angle,cores,0.5);
gpu_set_blendmode(bm_normal);
