/// @description Insert description here
// You can write your code in this editor
global.num_players = 2;
global.screen_width = 1920;
global.screen_height = 1080;
global.room_width = 1280;
global.room_height = 300;
global.schutting_hoogte = 50;
global.screen_part = 640;
global.schutting_border = 285; //hieronder kun je naar de buren lopen
window_set_rectangle(0, 0, global.screen_width * global.num_players, global.screen_height);
//window_set_size(global.screen_width * num_players, global.screen_height);
//window_set_position(0,0);
for (var i = 0; i < 12; i++;)
{
	player[i] = noone;
}

enum WEAPON_STATE {
 	IDLE = 0,
	PICKUP = 1,
	FLYING = 2
}

