/// @description Insert description here
// You can write your code in this editor


var intended_radius=24
repeat(3)
{
	var rdir = random(360)
	var rlen= random(intended_radius*0.4)
	
	scr_clean(mouse_x+lengthdir_x(rlen,rdir),mouse_y+lengthdir_y(rlen,rdir),intended_radius*(0.5+random(0.3)))
}