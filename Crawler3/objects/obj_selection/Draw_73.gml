if(!global.pause && !global.death)
{
	draw_set_font(Font);
	var w = ((x - (room_width div 4)) div 32);
	var h = ((y - (room_height div 4)) div 32);	
	show_debug_message("x: " + string(x) + " y: " + string(y));
	if(global.grid[# w, h] == 11)
	{
		var instances = ds_list_create();
		var n = collision_point_list(x, y, obj_sign1, false, true, instances, false);
		var i = 0;
		repeat ds_list_size(instances) 
		{
			if(x == 588 && y == 1196)
			{
				draw_text(obj_player.x - 90, obj_player.y - 110, "WASD to move\nMove mouse to change\nselection, and left click\nto pick up items");
			}
			else if(x == 588 && y == 1068)
			{
				draw_text(obj_player.x - 90, obj_player.y - 110, "Enemies Ahead!\nUse WASD to attack\nthem with your\nweapon");
			}
			else if(x == 588 && y == 940)
			{
				draw_text(obj_player.x - 90, obj_player.y - 110, "Beware of spike traps");
			}
			else if(x == 588 && y == 684)
			{
				draw_text(obj_player.x - 90, obj_player.y - 110, "Close the Door with \nselection\nBreak the boxes with\nyour attack");
			}	
			else if(x == 684 && y == 556)
			{
				draw_text(obj_player.x - 90, obj_player.y - 110, "Open your inventory on\nthe side, and equip the\nitems you have picked\nup");
			}	
			else if(x == 812 && y == 556)
			{
				draw_text(obj_player.x - 90, obj_player.y - 110, "Equip the different\narrows, use the\nselection to aim and\nright click to shoot");
			}
			else if(x == 1388 && y == 620)
			{
				draw_text(10, 110, "Use E to swap arrow\ntypes\n\nKill the Elite enemy and\nmake it to the ladder");
			}
			i++
		}
		ds_list_destroy(instances);
		show_debug_message(string(x) + " " + string(y));
	}
}
