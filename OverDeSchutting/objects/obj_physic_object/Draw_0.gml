/// @description Insert description here
// You can write your code in this editor




/// @description Insert description here
// You can write your code in this editor

if(state != WEAPON_STATE.PICKUP)

{
	src_draw_sprite(shadow_sprite,0,x,y)

	sprite_to_draw=sprite_grond
	if(z==0 && zSpd == 0 && (xSpd+ySpd)==0)
	{
		sprite_to_draw=sprite_grond
		image_xscale=1
	}
	else
	{
		if (zSpd>0)
		{
			sprite_to_draw=sprite_fly_up
			image_xscale = (xSpd == 0) ? 1 : xSpd / abs(xSpd);
		}
		else if (zSpd<0)
		{
			sprite_to_draw=sprite_fly_down
			image_xscale = (xSpd == 0) ? 1 : xSpd / abs(xSpd);
		}
		else
		{
			sprite_to_draw=sprite_grond
			image_xscale=1;
		}
	}


	src_draw_sprite_ext(sprite_to_draw,image_index,x,y-z,image_xscale,image_yscale,0,c_white,1)
}
//Otherwise the player handles the drawing!!