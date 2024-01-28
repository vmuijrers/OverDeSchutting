/// @description Insert description here
// You can write your code in this editor


for(var i = 0;i<room_width;i++)
{
	draw_point(i,405-(220/127)*i)
	draw_point(i,-975+(220/127)*i)
}

draw_line(127,185,673,185)
draw_line(0,438,800,438)


repeat(8000)
{
	x = random(800)
	y = random(600)
	if(scr_is_in(x,y))
	{
		draw_point_color(x,y,make_color_rgb(random(255),random(255),random(255)))
	}
}