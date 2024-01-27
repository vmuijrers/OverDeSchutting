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
draw_sprite_ext(sprite_index, image_index, x, y, look_dir, 1, 0, c_white, 1);


if(current_pickup == noone)
{
	draw_sprite_ext(sprite_hands_empty, image_index, x, y, look_dir, 1, 0, c_white, 1);
}
else
{
	draw_sprite_ext(sprite_hands_hold, image_index, x, y, look_dir, 1, 0, c_white, 1);
	draw_sprite_ext(current_pickup.sprite_picked_up,0,x,y-30,look_dir,1,0,c_white,1)
}

draw_circle(x,y, pickup_range, true)

//draw_text(x,y -64, string(minX) + string(maxX))
//draw_text(x,y -74, string(x) + string(y))
