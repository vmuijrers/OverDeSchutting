/// @description Insert description here
// You can write your code in this editor
if(state == WEAPON_STATE.PICKUP)
{
		sprite_index = asset_get_index(sprites[state_animal] + string(level))
		look_dir = target_x > x ? 1 : -1;
		draw_sprite_ext(sprite_index, 0, x,y - 32-z,look_dir, 1, 0, c_white, 1);
}else{
	
	sprite_index = asset_get_index(sprites[state_animal] + string(level))
	show_debug_message(sprite_index)
	look_dir = target_x > x ? 1 : -1;
	draw_sprite_ext(sprite_index, -1, x,y-z,look_dir, 1, 0, c_white, 1);
	draw_text(x,y - 64, string(state_animal));
}


if(target != noone){
	draw_line(x,y, target.x, target.y);
}
