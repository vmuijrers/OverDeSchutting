/// @description Insert description here
// You can write your code in this editor
num_players = 2;
global.screen_width = 1920;
global.screen_height = 1080;
window_set_rectangle(0, 0, global.screen_width * num_players, global.screen_height);
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

