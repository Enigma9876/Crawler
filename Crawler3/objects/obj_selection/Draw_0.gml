draw_self();
draw_set_font(Font);
var w = ((x - (room_width div 4)) div 32);
var h = ((y - (room_height div 4)) div 32);	
if(global.grid[# w, h] == 11)
{
	var instances = ds_list_create();
	var n = collision_point_list(x, y, obj_sign1, false, true, instances, false);
	var i = 0;
	repeat ds_list_size(instances) 
	{
		draw_sprite_stretched(spr_signshow, -1, 0, 100, 250, 125);
		draw_text(10, 110, "WASD to move");
		i++
	}
	ds_list_destroy(instances);
}
