// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function src_draw_sprite(_sprite_index,_image_index,_x,_y)
{
	if(x<64)
	{
		draw_sprite(_sprite_index,_image_index,_x+room_width,_y)
	}
	if(x>room_width-64)
	{
		draw_sprite(_sprite_index,_image_index,_x-room_width,_y)
	}
	draw_sprite(_sprite_index,_image_index,_x,_y)
}