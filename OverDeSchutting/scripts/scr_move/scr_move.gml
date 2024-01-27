// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_move(_xdir, _ydir){
	x += _xdir * movespeed;
	x = clamp(x, minX, maxX);
	if(_xdir != 0)
	{
		look_dir = _xdir > 0 ? 1 : -1;
	}
	y += _ydir * movespeed;
	y = clamp(y, minY, maxY);
}