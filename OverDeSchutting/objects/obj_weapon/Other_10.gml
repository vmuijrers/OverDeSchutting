/// @description Insert description here
// You can write your code in this editor
// Use Weapon


//Get all obj_physics_object within collision zone;

_objs_list = ds_list_create();
ds_list_copy(_objs_list, scr_find_objects_of_type_in_range (x,y, obj_physic_object, hitting_range));
show_debug_message(ds_list_size(_objs_list));
for(i = 0; i < ds_list_size(_objs_list); i++){
	obj = ds_list_find_value(_objs_list, i)
	if(point_distance(x,y*2,obj.x,obj.y*2)<hitting_range)
	{
		if(obj.z==0 && (obj.state == WEAPON_STATE.IDLE || obj.state == WEAPON_STATE.FLYING))
		{
			//Alright we fucking hit bros
			hitSpd = 6+random(3)
			hitDir = point_direction(x,y,obj.x,obj.y)
			obj.xSpd = lengthdir_x(hitSpd,hitDir)
			obj.ySpd = lengthdir_y(hitSpd,hitDir)*0.5
			obj.zSpd = hitSpd
			
		}
	}
}
		   