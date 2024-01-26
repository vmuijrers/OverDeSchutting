// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_move(xdir, ydir){
	x += xdir * movespeed;
	x = clamp(x, minX, maxX);
	y += ydir * movespeed;
	y = clamp(y, minY, maxY);
}