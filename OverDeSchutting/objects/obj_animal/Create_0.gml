/// @description Insert description here
// You can write your code in this editor
event_inherited()
target_x = 0;
target_y = 0;
target = noone

move_speed = 0.5;
min_wait_time = 30;
max_wait_time = 60;
roam_range = 100
target_list = ds_list_create()
minX = 0;
minX = 0;

idle_timer = 0;
poop_timer = 0;
eat_timer = 0;
default_image_speed = 1

sprite_name = "Pig_Fat"
look_dir = 1
state_animal = ANIMAL_STATE.EAT
level = 0; //eaten objects
max_level = 3
stopping_distance = 25


sprites[ANIMAL_STATE.IDLE] = "Pig_Fat_"
sprites[ANIMAL_STATE.EAT] = "Pig_Fat_Eat_"
sprites[ANIMAL_STATE.POOP] = "Pig_Poop_"
sprites[ANIMAL_STATE.MOVE] = "Pig_Fat_"

enum ANIMAL_STATE
{
	IDLE = 0,
	MOVE = 1,
	EAT = 2,
	POOP = 3
}


weightmult = .6






