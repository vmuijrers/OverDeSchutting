// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_is_in(_x,_y){
	
	var x_mod = _x mod 800;
	if (_y > 438 || _y < 185) return false;
	if (_y < 405 - (220 / 127) * x_mod || _y < -975 + (220 / 127) * x_mod) return false;
	return true;
}