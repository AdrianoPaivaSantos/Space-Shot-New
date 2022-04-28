/// @description Insert description here
draw_self();
gpu_set_blendmode(bm_add);
var cores= choose(c_yellow,c_red)
draw_sprite_ext(spr_brilho_tiro2,image_index,x,y,image_xscale*.5,image_yscale*.5,image_angle,cores,0.5);
gpu_set_blendmode(bm_normal);
