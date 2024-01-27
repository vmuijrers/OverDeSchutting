// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_stain(sprite,xpos,ypos,intensity){
	//MAKE A SHIT STAIN HERE
	stains = 1 + random(intensity)
	surface_set_target(obj_shitlayer.surf)
	for(var i=0; i<stains; i++)
	{
		splatdir=point_direction(0,0,xSpd,ySpd)
		splatdist = random(point_distance(0,0,xSpd,ySpd))
		
		dir = random(360)
		dist = random(i*2)/(max(1,splatdist/4))
		if(i>10)
		{
			i*=1+random(2)
		}
		

		draw_sprite(sprite,random(sprite_get_number(sprite)),xpos+lengthdir_x(dist,dir)+lengthdir_x(splatdist,splatdir),ypos+0.5*(lengthdir_y(dist,dir)+lengthdir_y(splatdist,splatdir)))
	}
	
	surface_reset_target()
	
	//Chance to make a drip modifier that drips this for a bit
	drip = instance_create_depth(x,y,1,obj_drip_smeer)
	drip.drip_intensity=ceil(random(4))
	drip.radius = 8 +random(32)
}