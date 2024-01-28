/// @description Insert description here
// You can write your code in this editor

if(state == WEAPON_STATE.PICKUP)
{
	exit	
}

	


//Apply x,y friction
mspd = point_distance(0,0,xSpd,ySpd)
mdir = point_direction(0,0,xSpd,ySpd)


//Apply z movement only if inside the area
if(scr_is_in(x,y))
{
	//Do air friction
	if(mspd>airfric)
	{
		mspd -= airfric
	}
	else
	{
		mspd = 0
	}
}
if(z>0)
{
	zSpd -= grav
}
if(z<=global.schutting_hoogte)
{
	if(scr_is_in(x,y))
	{
		z += zSpd
	}
	else
	{
		if zSpd>0
		{
			z+=zSpd
		}
		else
		{
			zSpd=0
		}
	}
}
else
{
	z+=zSpd
}

var bounced = false;
if(z < 0)
{
	event_user(10)
	bounced=true;
	audio_play_sound(choose(snd_drop_1,snd_drop_2,snd_drop_3 ), 10, false);
	//Scale the x,y speed
	mspd*=bouncyness
	
	//Scale the z bounce, with a cut to account for small bounce moves
	zSpd *= -bouncyness
	zSpd -= bouncecut
	if(zSpd <= 0)
	{
		zSpd=0
		z=0
		
		mspd*=bouncyness
	}
	else
	{
		z = -z*bouncyness
	}
}



//Do ground friction
if(z==0)
{
	if(mspd>fric)
	{
		mspd-=fric
	}
	else
	{
		if(mspd != 0 && !bounced)
		{
			//Bounced out
			event_user(10)
			bounced=true;
		}
		mspd=0
	}
}


//Apply x,y, movement and speed now
xSpd = lengthdir_x(mspd,mdir)
ySpd = lengthdir_y(mspd,mdir)


//Do x,y movement
scr_calc_borders()

if(z>global.schutting_hoogte)
{
	x+=xSpd
	y+=ySpd*0.5
}
else
{
	if(scr_is_in(x+xSpd,y))
	{
		x+=xSpd
	}
	else
	{
		if(scr_is_in(x-xSpd,y))
		{
			xSpd*= -1
		}
		else
		{
			x+=xSpd
		}
		
	}
	
	if(scr_is_in(x,y+ySpd))
	{
		y+=ySpd
	}
	else
	{
		ySpd*= -1
	}
	
}


if (y<185) y=185;
if (y>438) y=438
	
scr_periodic_bounderies();

if(xSpd != 0 || ySpd != 0 || zSpd != 0)
{
	state = WEAPON_STATE.FLYING
}
else if(state != WEAPON_STATE.PICKUP)
{
	state = WEAPON_STATE.IDLE
}


//Do logic to create damage mask if needed
if(z<32 && zSpd<-4.5 && point_distance_3d(0,0,0,zSpd,ySpd,zSpd)>5.5 && dmgplayer)
{
	instance_create_depth(x,y,depth,obj_dmg)
}