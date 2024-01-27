// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_handle_action_button(){
	
	//if no object pick something up
	if(current_pickup == noone)
	{
		_objs_list = ds_list_create();
		ds_list_copy(_objs_list, scr_find_objects_of_type_in_range (x,y, obj_weapon, pickup_range));
		show_debug_message(ds_list_size(_objs_list));
		for(i = 0; i < ds_list_size(_objs_list); i++){
		   if(ds_list_find_value(_objs_list, i).state == WEAPON_STATE.IDLE)
		   {
			 scr_pickup(ds_list_find_value(_objs_list, i));
			 break;
		   }
		}
	}else{
	 //throw object
		scr_drop(current_pickup);
		

	}
}