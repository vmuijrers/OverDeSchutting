/// @description Insert description here
// You can write your code in this editor

//GUI overlay
draw_sprite(Level_WebsiteVoorgrond_800x600,0,x,y)

//Score below
var str = "$ "  + string(myScore)
draw_set_color(c_white)
draw_set_font(font_big_value)
draw_set_halign(fa_center)
draw_text(x+400,499,str)


//Street name above
draw_set_halign(fa_center)
var street=scr_gen_street_name(x)
draw_set_font(fon_small_font)
draw_text(x+400,48,street)

draw_set_color(c_yellow)
draw_set_font(fon_small_font)
draw_text(x+400,68,"FOR SALE")

time_remaining = max(0,ceil(global.endtime-(current_time/1000)))
//Seconds remaining
draw_set_halign(fa_right)
draw_set_color(c_red)
draw_set_font(font_half_time_value)
draw_text(x+780,36,time_remaining)


if(time_remaining>180)
{
	draw_sprite(TUTORIAL_OVERLAY_VOORBOB,0,x,y)
}

draw_set_color(c_white)
if(time_remaining == 0)
{
	var maxScore =0;

	_num = instance_number(obj_score_counter)
	for(i = 0; i < _num;i++)
	{
		_obj = instance_find(obj_score_counter, i);
		if(_obj.myScore>maxScore)
		{
			maxScore = _obj.myScore
		}
		
	}
	
	if(myScore == maxScore)
	{
		draw_sprite(WINNER_OVERLAY,0,x+400,y+300)
	}
}


