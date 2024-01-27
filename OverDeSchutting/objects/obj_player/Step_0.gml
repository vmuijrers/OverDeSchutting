/// @description Insert description here
// You can write your code in this editor
//Decreaes swing so you can swing again
swing -= 1

if (gamepad_is_connected(pad_num))
{
    // do stuff with pad "i"
	
	hor = gamepad_axis_value(pad_num, gp_axislh);
	ver = gamepad_axis_value(pad_num, gp_axislv);
	scr_calc_borders()
	scr_move(hor, ver);
	
	//check for pickups
	if(gamepad_button_check_pressed(pad_num, gp_face1))
	{
		if(current_pickup == noone)
		{
			scr_check_for_pickup();	
		}else{
			is_charging = true;
			pickup_charge_time = 0;
		}
	}
	
	//throw object
	if(gamepad_button_check_released(pad_num, gp_face1) && is_charging)
	{
		is_charging = false;
		scr_drop(current_pickup);		
	}
	
	//do action
	if(gamepad_button_check_pressed(pad_num, gp_face2) && swing<=0)
	{
		scr_handle_action_button();		
		swing = 8
	}
	
	
	//udpate pickup and charge
	if(current_pickup != noone && current_pickup.state == WEAPON_STATE.PICKUP)
	{
		current_pickup.x = x;
		current_pickup.y = y;
		current_pickup.look_dir = look_dir;
		
		//charge the weapon for throwing
		if(is_charging && gamepad_button_check(pad_num, gp_face1))
		{
			pickup_charge_time += 1;
			pickup_charge_time = min(pickup_charge_time, pickup_max_charge_time);
		}
	}
	
}

