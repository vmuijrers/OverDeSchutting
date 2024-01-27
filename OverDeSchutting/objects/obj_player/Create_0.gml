/// @description Insert description here
// You can write your code in this editor
pad_num = -1;
movespeed = 3;
minX = 0;
maxX = 1920;
minY = 70;
maxY = global.room_height;
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


sprite_hands_empty = Joost_Hands_Empty
sprite_hands_hold = Joost_Hands_Hold
sprite_idle = Joost_Idle
sprite_run = Joost_Run

image_index=0;
