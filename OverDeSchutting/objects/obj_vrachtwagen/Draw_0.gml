/// @description Insert description here
// You can write your code in this editor


src_draw_sprite(sprite_index,image_index,x,y)

if(holding != noone)
{
	src_draw_sprite(holding_sprite,image_index,x-81+holdingx,y-49)
}

src_draw_sprite(Vrachtauto_Rijd_Voorgrond,image_index,x,y)

if(y<=drive_to_y)
{
	y=drive_to_y
	vspeed=0
}