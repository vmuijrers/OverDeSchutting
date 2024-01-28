/// @description Insert description here
// You can write your code in this editor
if(other.dmg == 1 && other.daddy!=id && invunerable<=0 )
{
	//audio_play_sound(choose(snd_hit_1, snd_hit_2, snd_hit_3), 10, false);
	//audio_play_sound(scr_sound_character_play(player_name, "hit"), 10, false);
	audio_play_sound_at(choose(snd_hit_1, snd_hit_2, snd_hit_3), x, y, 0, abs(x - room_width/2), room_width, 1, false, 20);
	audio_play_sound_at(scr_sound_character_play(player_name, "hit"), x, y, 0, abs(x - room_width/2), room_width, 1, false, 20);
	stunned = 45
	invunerable = 105
}