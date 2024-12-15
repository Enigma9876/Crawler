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
		if(x == 652 && y == 1484)
		{
			draw_text(10, 110, "WASD to move\n\nARROW KEYS to change\nselection");
		}
		else if(x == 620 && y == 1356)
		{
			draw_text(10, 110, "SPACE to interact with items\nand doors\nSPACE to attack");
		}
		else if(x == 588 && y == 940)
		{
			draw_text(10, 110, "Beware of spike traps");
		}
		else if(x == 620 && y == 780)
		{
			draw_text(10, 110, "Tip: close doors to block\nenemies");
		}	
		else if(x == 652 && y == 716)
		{
			draw_text(10, 110, "Break the boxes");
		}	
		i++
	}
	ds_list_destroy(instances);
	show_debug_message(string(x) + " " + string(y));
}
