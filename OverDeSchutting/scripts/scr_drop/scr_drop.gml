// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_drop(_object_to_throw){
	_object_to_throw.state = WEAPON_STATE.IDLE;
	_object_to_throw.look_dir = look_dir;
	_object_to_throw.x = x;
	_object_to_throw.y = y;
	current_pickup = noone;
	
	_object_to_throw.xSpd = -2+random(4)
	_object_to_throw.ySpd = -2+random(4)
	_object_to_throw.zSpd = 3+random(6)
}