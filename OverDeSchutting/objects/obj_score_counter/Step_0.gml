/// @description Insert description here
// You can write your code in this editor

myScore=200000

_num = instance_number(obj_physic_object)
for(i = 0; i < _num;i++)
{
	_obj = instance_find(obj_physic_object, i);
	if(_obj.x>=x && _obj.x<=x+640)
	{
		myScore +=scr_get_score(_obj)
	}
	
}