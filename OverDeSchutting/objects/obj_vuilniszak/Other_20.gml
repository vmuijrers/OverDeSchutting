/// @description Insert description here
// You can write your code in this editor
dented = 3


var number_of_items = 1;
if(abs(zSpd)>2+random(4))
{
	number_of_items+=1
}
if(random(1)>0.95)
{
	number_of_items+=1
}
if(random(1)<0.2)
{
	number_of_items-=1
}
hp-=1+(floor(random((number_of_items-1)/2)))
if hp == 0
{
	number_of_items+=1+floor(random(3))
}
number_of_items=min(3+floor(random(4)),number_of_items)
repeat(number_of_items)
{
	var nobj = choose(obj_turd,obj_dead_rat,obj_blikje,obj_blikje,obj_blikje,obj_blikje,obj_blikje,obj_blikje,obj_vissengraat,obj_vissengraat,obj_vissengraat,obj_turd);
	var new_spawn = instance_create_depth(x,y,depth,nobj)
	new_spawn.xSpd=-2+random(5)
	new_spawn.ySpd=-2+random(5)
	new_spawn.zSpd=2+random(2)

}

if(hp<=0)
{
	instance_destroy()
}