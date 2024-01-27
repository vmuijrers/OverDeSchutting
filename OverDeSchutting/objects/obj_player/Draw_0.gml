/// @description Insert description here
// You can write your code in this editor

if(point_distance(0,0,hor,ver)>0)
{
	sprite_index = sprite_run
	image_speed = 0.5
}
else
{
	sprite_index = sprite_idle
	image_speed = 0.3
}

//Draw my shadow
draw_sprite(Blobshadow_Player,0,x,y)

//Draw me
draw_sprite_ext(sprite_index, image_index, x, y, look_dir, 1, 0, c_white, 1);

//Draw my hands
if(current_pickup == noone)
{
	draw_sprite_ext(sprite_hands_empty, image_index, x, y, look_dir, 1, 0, c_white, 1);
}
else
{
	if(current_pickup.isBroom)
	{
		//draw_sprite_ext(sprite_hands_hold, image_index, x, y, look_dir, 1, 0, c_white, 1);
		var turnanim = 1
		if(swing>0)
		{
			turnanim=-1
		}
		draw_sprite_ext(current_pickup.sprite_picked_up,0,x,y,look_dir*turnanim,1,0,c_white,1)
	}
	else
	{
		draw_sprite_ext(sprite_hands_hold, image_index, x, y, look_dir, 1, 0, c_white, 1);
		draw_sprite_ext(current_pickup.sprite_picked_up,0,x,y-30,look_dir,1,0,c_white,1)
	}
}

//draw_circle(x,y, pickup_range, true)


