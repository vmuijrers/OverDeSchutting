// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_stain(sprite,xpos,ypos){
	//MAKE A SHIT STAIN HERE
	surface_set_target(obj_shitlayer.surf)
	draw_sprite(sprite,random(sprite_get_number(sprite)),xpos,ypos)
	surface_reset_target()
}