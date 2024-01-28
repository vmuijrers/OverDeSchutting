/// @description Insert description here
// You can write your code in this editor

holding = choose(obj_vuilniszak)
x= 128+random(room_width-374)+(choose(0,1,2)*room_width)
x_target = (x+room_width -640) mod room_width

if(!variable_global_exists("total_holdings"))
{
	global.total_holdings = 1
}
else
{
	global.total_holdings +=1
}

/*

if(random(1)>0.95 || (global.total_holdings>7 && random(1) > 0.8))
{
	if(!instance_exists(obj_demonalisa))
	{
		holding = obj_demonalisa
	}
}
else if(random(1)>0.92 || (global.total_holdings>7 && random(1) > 0.75))
{
	if(!instance_exists(obj_goldengnome))
	{
		holding = obj_goldengnome
	}
}
holding_sprite = object_get_sprite(holding)
if(holding==obj_demonalisa)
{
	holding_sprite=DeMonaLisa_PickedUp
}
*/
holdingx =  floor(random(90))

hspeed=3
y=room_height+sprite_height
vspeed=-1

drive_to_y=480


image_speed=0.5

