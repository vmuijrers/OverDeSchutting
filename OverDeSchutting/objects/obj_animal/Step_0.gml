/// @description Insert description here
// You can write your code in this editor


scr_calc_borders() //stay within screen until thrown
if(state == WEAPON_STATE.IDLE)
{
	switch(state_animal)
	{
		case ANIMAL_STATE.IDLE: 
		//about to explode
			idle_timer += 1;
			
			image_speed = idle_timer / 60
			if(idle_timer >= 60){
				idle_timer = 0;
				image_speed = default_image_speed
				state_animal = 	ANIMAL_STATE.POOP
			}
		break;
		
		case ANIMAL_STATE.MOVE: 
			var _distance = point_distance(x,y, target_x, target_y);
			if(_distance <= stopping_distance)
			{		
				state_animal = ANIMAL_STATE.EAT;	
			}else{
				var _dir = point_direction(x,y,target_x, target_y);
				x = x + lengthdir_x(move_speed, _dir)
				y = y + lengthdir_y(move_speed, _dir)
			}
			break;
		case ANIMAL_STATE.POOP: 
			//poop for 2 seconds
			poop_timer += 1;
			if(poop_timer >= 120){
				poop_timer = 0;
				target_x = x + choose(-roam_range, roam_range)	
				target_y = y + choose(-roam_range, roam_range)
				target_y = clamp(target_y, global.min_y, room_height)
				level = 0;

				state_animal = 	ANIMAL_STATE.MOVE
			}
			//TODO: reset target when trhown
		break;
		
		case ANIMAL_STATE.EAT:
		eat_timer +=1;
		if(eat_timer >= 60){
		 eat_timer = 0;	
		 //if(state == WEAPON_STATE.IDLE){
				if(target != noone /* && point_distance(x,y, target.x, target.y) <= stopping_distance * 1.5 */)
				{
					//target.x = 100000;
					with(target){
						instance_destroy()
					}
					target = noone;
					level += 1;
				}
				if(level == max_level)
				{
					state_animal = ANIMAL_STATE.IDLE;
				}else
				{
					target = instance_nearest(x,y, obj_turd)
					if(target != noone && target.x >= minX && target.x <= maxX){
						target_x = target.x;
						target_y = target.y;
					}else{
		
						target_x = x + choose(-roam_range, roam_range)	
						target_y = y + choose(-roam_range, roam_range)
						target_y = clamp(target_y, global.min_y, room_height)
					}
	
					state_animal = ANIMAL_STATE.MOVE;

				}
		//}
		 
		}
		break;
	}

}else{
event_inherited()	
}
scr_periodic_bounderies()





