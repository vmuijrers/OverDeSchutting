/// @description Insert description here
// You can write your code in this editor





// Inherit the parent event
event_inherited();
//audio_play_sound(choose(snd_splat_1, snd_splat_2, snd_splat_3), 10, false);
audio_play_sound_at(choose(snd_splat_1, snd_splat_2, snd_splat_3), x, y, 0, 100, 2400, 1, false, 20);
var number_of_gibs = 0 + floor(random(2))
if(number_of_gibs>0)
{
	repeat(number_of_gibs)
	{
		var new_spawn = instance_create_depth(x,y,depth,obj_poep_gib)
		new_spawn.xSpd=-2+random(3)
		new_spawn.ySpd=-2+random(3)
		new_spawn.zSpd=1+random(2)	
	}
}


weightmult = 1.5