/// @description Insert description here
// You can write your code in this editor

repeat(round(drip_intensity))
{
	scr_drip(x,y,radius)	
}

radius -= decay_direct
radius = radius * decay_multiply
if(radius <=8)
{
	instance_destroy()
}
