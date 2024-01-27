// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_periodic_bounderies(){
	if(x <= -sprite_width){
		x = room_width - 1
	}else if(x >= room_width){
		x = 1
	}
}