/// @description Insert description here
// You can write your code in this editor


//Spawn truck
instance_create_layer(random_range(0, room_width), room_height+200,"Instances", obj_vuilniswagen /*choose(obj_vrachtwagen, obj_vuilniswagen)*/);
alarm[0] = random_range(room_speed * 30,room_speed *60);


