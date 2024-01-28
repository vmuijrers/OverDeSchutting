/// @description Insert description here
// You can write your code in this editor


x = (x + room_width) mod room_width


if( point_distance(x,0,x_target,0) < 16 && holding != noone)
{
	var spawn_obj = instance_create_depth(x-81+holdingx,y-49,depth,holding)
	spawn_obj. xSpd= hspeed-2+random(4)
	spawn_obj.ySpd = -2-random(6)
	spawn_obj.zSpd = 2+random(4)
	holding = noone
	
	alarm[0]=15
}


if(holding == noone && y> room_height+sprite_height)
{
	instance_destroy()
}