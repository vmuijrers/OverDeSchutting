// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_drop(_object_to_throw){
	if(_object_to_throw == noone)
		return
	}
	_object_to_throw.state = WEAPON_STATE.FLYING;
	_object_to_throw.look_dir = look_dir;
	current_pickup = noone;
	
	_charge_percentage = pickup_charge_time / pickup_max_charge_time;
	show_debug_message(_charge_percentage)
	_object_to_throw.xSpd = (look_dir * _charge_percentage * max_throw_power) *(_object_to_throw.weightmult)
	_object_to_throw.ySpd = -1 + random(2)
	_object_to_throw.zSpd =  2 + _charge_percentage * 6 *(.15+(1+2*_object_to_throw.weightmult)/3)
	_object_to_throw.state=WEAPON_STATE.FLYING
}