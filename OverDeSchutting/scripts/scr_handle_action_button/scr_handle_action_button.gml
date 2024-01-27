// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_handle_action_button(){
	
	//if no object pick something up
	if(current_pickup == noone)
	{

	}else{
		with(current_pickup)
		{
			event_user(0)
		}
	}
}