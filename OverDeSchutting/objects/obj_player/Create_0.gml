/// @description Insert description here
// You can write your code in this editor
pad_num = -1;
movespeed = 3;
minX = 0;
maxX = 1920;
minY = 70;
maxY = room_height;
pickup_range = 60;
look_dir = 1;

max_throw_power = 10;
is_charging = false;
//show_debug_message("minX: " + string(minX));
//show_debug_message("maxX: " + string(maxX));

current_pickup = noone;
pickup_charge_time = 0;
pickup_max_charge_time = 30;

hor=0
ver=0

offset = 0;	
scr_load_player_sprites()
image_index=0;
//sprite_index = sprite_idle
worth = 0;



swing = 0;

stunned = 0
invunerable = 0;