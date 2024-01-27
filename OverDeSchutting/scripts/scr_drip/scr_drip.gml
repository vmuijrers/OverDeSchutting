// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_drip(drip_posx,drip_posy,drip_dist){

	rdir = random(360)
	rlen = random(drip_dist)

	px = floor(drip_posx+lengthdir_x(rlen,rdir))
	py = floor(drip_posy+lengthdir_y(rlen,rdir)*0.5)

	//This is a test for random displacement on a colour map
	col = surface_getpixel_ext(obj_shitlayer.surf,px, py);
	alpha = (col >> 24) & 255;
	blue = (col >> 16) & 255;
	green = (col >> 8) & 255;
	red = col & 255;


	if(alpha>0)
	{
		surface_set_target(obj_shitlayer.surf)
		pcol = make_color_rgb(red,green,blue)
	
		disti =1
		if(random(1)>0.8)
		{
			disti=2
			while(random(1)>0.55)
			{
				disti+=1
			}

		}
		flowdir = choose(-1,0,1)
		for(var i=1 ; i<disti ; i+=1)
		{
			if(flowdir == 0)
			{
				draw_point_color(px,py+i,pcol)
			}
			else
			{
				draw_point_color(px*i*flowdir,py,pcol)
			}
		}
		surface_reset_target()
	}

}