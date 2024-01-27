/// @description Insert description here
// You can write your code in this editor

//Apply x,y friction
mspd = point_distance(0,0,xSpd,ySpd)
mdir = point_direction(0,0,xSpd,ySpd)

//Do air friction
if(mspd>airfric)
{
	mspd -= airfric
}
else
{
	mspd = 0
}

//Apply z movement
if(z>0)
{
	zSpd -= grav
}
z += zSpd

var bounced = false;
if(z < 0)
{
	event_user(10)
	bounced=true;
	
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

if(state == WEAPON_STATE.PICKUP){
show_debug_message("x: " + string(x) + " y: " + string(y) + "z: " + string(z));
show_debug_message("minX " + string(minX) + " maxX: " + string(maxX));
}
x+=xSpd

if(state = WEAPON_STATE.FLYING && (x > maxX || x < minX) && z < global.schutting_hoogte)
{
 xSpd *= -1	
 x += xSpd * 2
}


y+=ySpd*0.5
scr_periodic_bounderies();

if(xSpd != 0 || ySpd != 0 || zSpd != 0)
{
	state = WEAPON_STATE.FLYING
}
else if(state != WEAPON_STATE.PICKUP)
{
	state = WEAPON_STATE.IDLE
}