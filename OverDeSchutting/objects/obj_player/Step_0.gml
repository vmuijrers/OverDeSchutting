/// @description Insert description here
// You can write your code in this editor
if (gamepad_is_connected(pad_num))
{
    // do stuff with pad "i"
	if(gamepad_button_check(pad_num, gp_face1)){
		show_debug_message("hello");
		
	}
	hor = gamepad_axis_value(pad_num, gp_axislh);
	ver = gamepad_axis_value(pad_num, gp_axislv);
	scr_move(hor, ver);
	
	
	if(gamepad_button_check_pressed(pad_num, gp_face1))
	{
		scr_handle_pickup_button();		
	}
	if(gamepad_button_check_pressed(pad_num, gp_face2))
	{
		scr_handle_action_button();		
	}
	
	if(current_pickup != noone && current_pickup.state == WEAPON_STATE.PICKUP)
	{
		current_pickup.x = x;
		current_pickup.y = y - sprite_height;
		current_pickup.look_dir = look_dir;
		
	}
	
}

