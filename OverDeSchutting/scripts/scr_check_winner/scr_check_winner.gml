// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_check_winner(){
	
	heighest = 0
	best_player = instance_find(obj_player, 0)
	for(i=0; i < instance_number(obj_player); i++){
		var _waarde = instance_find(obj_player, i).worth
		if(_waarde > heighest)
		{
			best_player = instance_find(obj_player, i)
			heighest = _waarde
		}
	}
}