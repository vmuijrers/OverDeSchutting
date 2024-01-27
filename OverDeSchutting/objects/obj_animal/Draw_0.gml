/// @description Insert description here
// You can write your code in this editor

if(state == WEAPON_STATE.IDLE)
{
	sprite_index = asset_get_index(sprites[state_animal] + string(level))
	show_debug_message(sprite_index)
	look_dir = target_x > x ? 1 : -1;
	draw_sprite_ext(sprite_index, -1, x,y,look_dir, 1, 0, c_white, 1);
	draw_text(x,y - 64, string(state_animal));
}else{
	event_inherited()
}


