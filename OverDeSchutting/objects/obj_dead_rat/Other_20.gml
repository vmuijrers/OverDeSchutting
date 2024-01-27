/// @description Insert description here
// You can write your code in this editor



// Inherit the parent event
event_inherited();

if(abs(zSpd)>3)
{
	hp-=1
}


if(hp<=0)
{
	repeat(2+floor(random(4)))
	{
		var dirstain = random(360)
		var lenstain = random(8)
		x+=lengthdir_x(lenstain,dirstain)
		y+=lengthdir_y(lenstain,dirstain)
		event_inherited()
	}
	instance_destroy()
}