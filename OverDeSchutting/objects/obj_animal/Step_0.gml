/// @description Insert description here
// You can write your code in this editor


scr_calc_borders() //stay within screen until thrown
if(state != WEAPON_STATE.FLYING && z == 0)
{
	switch(state_animal)
	{
		case ANIMAL_STATE.IDLE: 
		//about to explode
			idle_timer += 1;
			
			image_speed = (idle_timer / 180)
			if(idle_timer >= 180){
				idle_timer = 0;
				image_speed = default_image_speed
				state_animal = 	ANIMAL_STATE.POOP
			}
		break;
		
		case ANIMAL_STATE.MOVE: 
			if(z != 0 || state == WEAPON_STATE.PICKUP){ break; }
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
			if(poop_timer >= 10){
				poop_timer = 0;
				target_x = x + choose(-roam_range, roam_range)	
				target_y = y + choose(-roam_range, roam_range)
				target_y = clamp(target_y, global.min_y, room_height)
				level = 0;
				
				
				//Options;
				//1=One big turd
				//2=Projectile turd
				//3=Explosive diarrea
				var option = choose(1,1,1,1,1,1,1,2,2,3)
				switch(option)
				{
					case 1: // One big turd
						var _turd = instance_create_layer(x-15*look_dir,y+3,"Instances", obj_big_turd)
							_turd.depth = depth+3
							_turd.xSpd =0
							_turd.ySpd = 0
							_turd.zSpd =  0
				
							//Create some gibs to show we're pooping
							var number_of_gibs = 4+ floor(random(7))
							repeat(number_of_gibs)
							{
								var new_spawn = instance_create_depth(x-15*look_dir,y+4,depth,obj_poep_gib)
								new_spawn.xSpd=-2+random(4)
								new_spawn.ySpd=-2+random(4)
								new_spawn.zSpd=1+random(1)	
							}					
					break;
					case 2: //Projectile turd
						var _turd = instance_create_layer(x-15*look_dir,y+3,"Instances", obj_big_turd)
							_turd.depth = depth+3
							_turd.xSpd =-4+random(8)
							_turd.ySpd = 2+random(6)
							_turd.zSpd =  4+random(6)
				
							//Create some gibs to show we're pooping
							var number_of_gibs = 7+ floor(random(10))
							repeat(number_of_gibs)
							{
								var new_spawn = instance_create_depth(x-15*look_dir,y+4,depth,obj_poep_gib)
								new_spawn.xSpd=_turd.xSpd -1 +random(2)
								new_spawn.ySpd=_turd.ySpd  -1 +random(2)
								new_spawn.zSpd=_turd.zSpd -1 + random(3)

							}						
					break;
					case 3: //Really big diarrhea
							var number_of_gibs = 62+ floor(random(47))
							repeat(number_of_gibs)
							{
								var new_spawn = instance_create_depth(x-15*look_dir,y+3,depth,obj_poep_gib)
								new_spawn.z=11
								new_spawn.xSpd= (-1*look_dir)*(2+random(5))
								new_spawn.ySpd=-4+random(8)
								new_spawn.zSpd=2+random(3)	
							}					
					break;
				}

				state_animal = 	ANIMAL_STATE.MOVE
			}
			//TODO: reset target when thrown
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
					px = x;
					py = y
					x-=10000
					ds_list_copy(target_list, scr_find_objects_of_type_in_range(px,py, obj_physic_object, 500));
					x+=10000
					var _closest = 1000000;
					for(i =0 ; i < ds_list_size(target_list);i++)
					{
						var _obj = ds_list_find_value(target_list, i);
						if(_obj.x < minX || _obj.x > maxX || !_obj.is_edible){
							continue;	
						}else
						{
							_dist = point_distance(_obj.x, _obj.y, x,y)
							if(_dist < _closest)
							{
								target = _obj
								target_x = target.x;
								target_y = target.y;
							}
						}	
					}
					
					if(target == noone)
					{
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
if(target_x < minX || target_x > maxX)
{
	target = noone;
	target_x = x + choose(-roam_range, roam_range)	
	target_y = y + choose(-roam_range, roam_range)
	target_y = clamp(target_y, global.min_y, room_height)
}

scr_periodic_bounderies()





