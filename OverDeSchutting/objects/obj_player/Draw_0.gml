/// @description Insert description here
// You can write your code in this editor


//Draw my shadow

src_draw_sprite(Blobshadow_Player,0,x,y)

//Do the stunned drawing

if(stunned>0)
{
	sprite_index = sprite_stunned
	//Eerst wit dan zwart
	if(stunned>35)
	{
		gpu_set_fog(true,c_white,0,0)
		src_draw_sprite(sprite_index,image_index,x,y)
		gpu_set_fog(false,c_white,0,0)
	}
	else if (stunned>25)
	{
		gpu_set_fog(true,c_black,0,0)
		src_draw_sprite(sprite_index,image_index,x,y)
		gpu_set_fog(false,c_white,0,0)
	}
	else{
		src_draw_sprite(sprite_index,image_index,x,y)
	}
}
else
{
	
	//Do all other drawing

	if(point_distance(0,0,hor,ver)>0)
	{
		sprite_index = sprite_run
		image_speed = 0.5
	}
	else
	{
		//draw_sprite_ext(sprite_hands_hold, image_index, x, y, look_dir, 1, 0, c_white, 1);
		sprite_index = sprite_idle
		image_speed = 0.5
	}


	//Draw me
	src_draw_sprite_ext(sprite_index, image_index, x, y + offset, look_dir, 1, 0, c_white, 1);

	//Draw my hands
	if(current_pickup == noone)
	{
		src_draw_sprite_ext(sprite_hands_empty, image_index, x, y, look_dir, 1, 0, c_white, 1);
	}
	else
	{
		if(is_charging){
			offset = choose(-2,2)
		}else{
			offset = 0;	
		}
		
		if(current_pickup.isBroom)
		{
			//draw_sprite_ext(sprite_hands_hold, image_index, x, y, look_dir, 1, 0, c_white, 1);
			var turnanim = 1
			if(swing>7)
			{
				turnanim=-1
			}
			src_draw_sprite_ext(current_pickup.sprite_picked_up,0,x,y + offset,look_dir*turnanim,1,0,c_white,1)
		}
		else
		{
			src_draw_sprite_ext(sprite_hands_hold, image_index, x, y+ offset, look_dir, 1, 0, c_white, 1);
			if(current_pickup.object_index  != obj_animal){
				src_draw_sprite_ext(current_pickup.sprite_picked_up,0,x,y-30+ offset,look_dir,1,0,c_white,1)
			}
		}
	}
}

