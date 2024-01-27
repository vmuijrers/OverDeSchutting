// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_pickup(_target_pickup){
	current_pickup = _target_pickup;
	current_pickup.state = WEAPON_STATE.PICKUP;
}