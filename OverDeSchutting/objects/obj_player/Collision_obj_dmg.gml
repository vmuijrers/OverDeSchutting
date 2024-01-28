/// @description Insert description here
// You can write your code in this editor
if(other.dmg == 1 && other.daddy!=id)
{
	audio_play_sound(choose(snd_hit_1, snd_hit_2, snd_hit_3), 10, false);
	audio_play_sound(scr_sound_character_play(player_name, "hit"), 10, false);
	stunned = 45
}