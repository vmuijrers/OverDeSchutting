/// @description Insert description here
// You can write your code in this editor
global.num_players = 3;
room_width = 2400;
room_height = 600;

global.screen_width = 800;
global.screen_height = 600;
global.schutting_hoogte = 50;
global.screen_part = room_width / global.num_players; //size of a single screen in game units
global.schutting_border = 285; //hieronder kun je naar de buren lopen
global.min_y = 70;
window_set_rectangle(0, 0, global.screen_width * global.num_players, global.screen_height);

for (var i = 0; i < global.num_players; i++;)
{
	view_set_visible(i, true);
	view_set_xport(i,i * global.screen_width); 
	view_set_yport(i,0); 
	view_set_wport(i,global.screen_width); 
	view_set_hport(i,global.screen_height); 
	camera_set_view_pos(view_camera[i], i *global.screen_part, 0);
	camera_set_view_size(view_camera[i], global.screen_part, room_height);
}
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

for (var i = 0; i < 1; i++;)
{
	//instance_create_layer(random_range(0, global.screen_width), 500,"Instances", obj_animal)
}
