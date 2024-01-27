// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_clean(xpos,ypos,radius){
	//intensity = the percentage of pixels that are cleaned	
	//>50% = whole thing with n((100-%)/5) circles that encompass 5% of the surface subtracted as map
	//<=50% = n circles that encompass 10% (%/10)
	//Todo work out that logic, for now just do the radius

	surface_set_target(obj_shitlayer.surf)
	draw_set_color(c_white)
	gpu_set_blendmode(bm_subtract)
	draw_ellipse(xpos-radius,ypos-radius/2,xpos+radius,ypos+radius/2,false)
	gpu_set_blendmode(bm_normal)
	surface_reset_target()
}