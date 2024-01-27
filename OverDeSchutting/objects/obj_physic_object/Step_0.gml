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
if(z < 0)
{
	event_user(0)
			
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
		mspd=0
	}
}


//Apply x,y, movement and speed now
xSpd = lengthdir_x(mspd,mdir)
ySpd = lengthdir_y(mspd,mdir)

//Do x,y movement
x+=xSpd
y+=ySpd*0.5
