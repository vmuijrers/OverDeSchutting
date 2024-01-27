// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
randomize();
global.players_loaded =  0
global.player_load_bias = floor(random(4))
global.player_load_direction = choose(1,-1)
function scr_load_player_sprites(){
	
	player_index = global.players_loaded*global.player_load_direction
	var load = (4+player_index+global.player_load_bias) mod 4
	//show_message(load)
	switch(load)
	{
		case 0:
			sprite_hands_empty = Joost_Hands_Empty
			sprite_hands_hold = Joost_Hands_Hold
			sprite_idle = Joost_Idle
			sprite_idle = Joost_Idle
			sprite_run = Joost_Run
		break;
		case 1:
			sprite_hands_empty = Josselin_Hands_Empty
			sprite_hands_hold = Josselin_Hands_Hold
			sprite_idle = Josselin_Idle
			sprite_run = Josselin_Run
		break;
		case 2:
			sprite_hands_empty = Jos_Hands_Empty
			sprite_hands_hold = Jos_Hands_Hold
			sprite_idle = Jos_Idle
			sprite_run = Jos_Run
		break;
		case 3:
			sprite_hands_empty = Joske_Hands_Empty
			sprite_hands_hold = Joske_Hands_Hold
			sprite_idle = Joske_Idle
			sprite_run = Joske_Run
		break;
	}
	 global.players_loaded +=1;
}