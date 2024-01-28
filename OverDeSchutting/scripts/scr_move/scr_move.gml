// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_move(_xdir, _ydir){
	newX = x;
	newX += _xdir * movespeed;
	newY = y;
	if(newY < global.schutting_border){
		newX = clamp(newX, minX, maxX);
		if(newX <= minX){
		 newX = minX + 1	
		}else if(newX >= maxX){
		 newX = maxX - 1	
		}
	}
	if(_xdir != 0)
	{
		look_dir = _xdir > 0 ? 1 : -1;
	}
	newY += _ydir * movespeed;
	newY = clamp(newY, minY, maxY);
	
	if(scr_is_in(newX,newY))
	{
		x = newX;
		y = newY;
	}
	scr_periodic_bounderies();
}