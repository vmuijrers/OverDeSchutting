// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_drop(_object_to_throw){
	_object_to_throw.state = WEAPON_STATE.FLYING;
	_object_to_throw.look_dir = look_dir;
	current_pickup = noone;
	
	_charge_percentage = pickup_charge_time / pickup_max_charge_time;
	show_debug_message(_charge_percentage)
	_object_to_throw.xSpd = look_dir * _charge_percentage * max_throw_power
	_object_to_throw.ySpd = -1 + random(2)
	_object_to_throw.zSpd =  1 + _charge_percentage * 8
	scr_sound_character_play(player_name, "yeet");
}