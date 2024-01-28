// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_pickup(_target_pickup){
	current_pickup = _target_pickup;
	current_pickup.state = WEAPON_STATE.PICKUP;
	if(_target_pickup.object_index == obj_animal){
		audio_play_sound(choose(snd_pigs_1, snd_pigs_2, snd_pigs_3, snd_pigs_4), 10, false);	
	}
}