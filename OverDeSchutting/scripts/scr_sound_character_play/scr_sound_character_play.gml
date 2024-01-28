// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

function scr_sound_character_play(_player_name, _audio_name){
	
	switch(_player_name){
		
		case "jos":
			switch(_audio_name){
				case "grunt": return choose(snd_jos_grunt_1, snd_jos_grunt_2, snd_jos_grunt_3, snd_jos_grunt_4)
				case "hit": return choose(snd_jos_hit_1, snd_jos_hit_2, snd_jos_hit_3, snd_jos_hit_4, snd_jos_hit_5)
				case "insult": return choose(snd_jos_insult_1, snd_jos_insult_2, snd_jos_insult_3)
				case "yeet": return choose(snd_jos_yeet_1, snd_jos_yeet_2, snd_jos_yeet_3)
				
			}
		case "robot":
		switch(_audio_name){
				case "grunt": return choose(snd_robot_1, snd_robot_2, snd_robot_3)
				case "hit": return choose(snd_robot_1, snd_robot_2, snd_robot_3)
				case "insult": return choose(snd_robot_insult_1, snd_robot_insult_2, snd_robot_insult_3)
				case "yeet": return choose(snd_robot_1, snd_robot_2, snd_robot_3)
		}
		case "joost":
		switch(_audio_name){
				case "grunt": return choose(snd_joost_grunt_2, snd_joost_grunt_3, snd_joost_grunt_4)
				case "hit": return choose(snd_joost_hit_1, snd_joost_hit_2, snd_joost_hit_3, snd_joost_hit_4, snd_joost_hit_5)
				case "insult": return choose(snd_joost_barf_1, snd_joost_barf_2)
				case "yeet": return choose(snd_joost_yeet_1, snd_joost_yeet_2)
		}
		case "joske":
		case "jocelyn":
		switch(_audio_name){
				case "grunt": return choose(snd_jocelyn_grunt_1, snd_jocelyn_grunt_2, snd_jocelyn_grunt_3)
				case "hit": return choose(snd_jocelyn_hit_1, snd_jocelyn_hit_2)
				case "insult": return choose(snd_jocelyn_barf_1, snd_jocelyn_barf_2)
				case "yeet": return choose(snd_jocelyn_yeet_10, snd_jocelyn_yeet_8, snd_jocelyn_yeet_9)
		}
	}
	return snd_jos_grunt_3
}