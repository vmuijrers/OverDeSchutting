// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_get_score(obj){
	mapping[obj_bbq] = 800
	mapping[obj_beeld_joost] = 2500
	mapping[obj_beeld_jos] = 2500
	mapping[obj_beeld_joske] = 2500
	mapping[obj_beeld_josselin] = 2500
	mapping[obj_demonalisa] = 61000000
	mapping[obj_goldengnome] = 8300
	mapping[obj_tuinkabouter] = 1800
	mapping[obj_tuinstoel] = 200
	mapping[obj_tuintafel]= 180
	mapping[obj_animal]=-1100
	mapping[obj_big_turd]=-2400
	mapping[obj_dead_rat]=-350
	mapping[obj_turd]=-950
	mapping[obj_vissengraat]=-100
	mapping[obj_vuilniszak]=-50
	mapping[obj_bezem]=50
	
	return(mapping[obj.object_index])
}