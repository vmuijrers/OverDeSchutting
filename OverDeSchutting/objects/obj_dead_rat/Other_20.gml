/// @description Insert description here
// You can write your code in this editor



// Inherit the parent event
scr_stain(stain_sprite,x,y,max(1,zSpd))

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
		scr_stain(stain_sprite,x,y,max(1,zSpd)+random(3))
	}
	instance_destroy()
}

weightmult = 1.3