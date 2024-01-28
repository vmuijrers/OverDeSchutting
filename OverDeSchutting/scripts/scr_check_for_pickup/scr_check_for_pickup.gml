// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_check_for_pickup(){
//if no object pick something up
	if(current_pickup == noone)
	{
		_objs_list = ds_list_create();
		ds_list_copy(_objs_list, scr_find_objects_of_type_in_range (x,y, obj_pickup_parent, pickup_range));
		//show_debug_message(ds_list_size(_objs_list));
		
		var nearest = noone;
		var nearest_dist = 10000
		for(i = 0; i < ds_list_size(_objs_list); i++){
			nextobj = ds_list_find_value(_objs_list, i)
			if(nextobj.state == WEAPON_STATE.IDLE)
			{
			   var dist = point_distance(x,y*2,nextobj.x,nextobj.y*2)
			   if(dist<nearest_dist)
			   {
				   nearest_dist= dist;
				   nearest = nextobj
			   }
		   }
		}
		if nearest != noone
		{
			scr_pickup(nearest);
			audio_play_sound(scr_sound_character_play(player_name, "grunt"), 10, false);
		}
	}
}