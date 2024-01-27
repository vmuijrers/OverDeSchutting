/// @description Insert description here
// You can write your code in this editor


// Inherit the parent event
event_inherited();
event_inherited();

var poepdir = random(360)
repeat(3)
{
	poep_turd=instance_create_depth(x-2+random(4),y,depth,obj_turd)
	poep_turd.z=random(4)
	var poep_speed = 1+random(5)
	poep_turd.xSpd = lengthdir_x(poep_speed,poepdir)
	poep_turd.ySpd = lengthdir_y(poep_speed,poepdir)
	poep_turd.zSpd =  2+random(3)
	poepdir += 160 - random(80)	
}

var number_of_gibs = 5+ floor(random(9))
repeat(number_of_gibs)
{
	var new_spawn = instance_create_depth(x,y,depth,obj_poep_gib)
	new_spawn.xSpd=-4+random(8)
	new_spawn.ySpd=-4+random(8)
	new_spawn.zSpd=2+random(3)	

}

instance_destroy()