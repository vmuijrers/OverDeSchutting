// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_find_objects_of_type_in_range(_x, _y, _obj_type, _range){
	_num = instance_number(_obj_type)
	_objects_list = ds_list_create();
	_num_found = 0;
	for(i = 0; i < _num;i++)
	{
		_obj = instance_find(_obj_type, i);
		_dist = point_distance(_obj.x,_obj.y, _x, _y)
		if(_dist <= _range)
		{
			ds_list_add(_objects_list, _obj);
			
		}
		
	}
	return _objects_list;
	
}