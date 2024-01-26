/// @description Insert description here
// You can write your code in this editor

//Apply x,y friction
spd = point_distance(0,0,xSpd,ySpd)
dir = point_direction(0,0,xSpd,ySpd)
if(spd>fric)
{
	spd -= fric
}
else
{
	spd = 0
}
xSpd = lengthdir_x(spd,dir)
ySpd = lengthdir_y(spd,dir)

//Do x,y movement
x+=xSpd
y+=ySpd*0.5

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
	xSpd*= bouncyness
	ySpd*=bouncyness
	
	//Scale the z bounce, with a cut to account for small bounce moves
	zSpd *= -bouncyness
	zSpd -= bouncecut
	if(zSpd < 0)
	{
		zSpd=0
		z=0
	}
	else
	{
		z = -z*bouncyness
	}
}



