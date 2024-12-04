x = obj_player.x + global.xdistance;
y = obj_player.y + global.ydistance;

	if(keyboard_check(vk_left))
	{
		global.xdistance = -32;
		global.ydistance = 0;
	}
	else if(keyboard_check(vk_right))
	{
		global.xdistance = 32;
		global.ydistance = 0;
	}
	else if(keyboard_check(vk_up))
	{
		global.xdistance = 0;
		global.ydistance = -32;
	}
	else if(keyboard_check(vk_down))
	{
		global.xdistance = 0;
		global.ydistance = 32;
	}
	
	else if(global.canMove == true)
	{
		if(keyboard_check_pressed(vk_space))
		{
			var w = ((x - (room_width div 4)) div 32);
			var h = ((y - (room_height div 4)) div 32);
			var left = global.grid[# w - 1,h];
			var right = global.grid[# w + 1,h];
			var up = global.grid[# w,h - 1];
			var down = global.grid[# w,h + 1];
			
			if(global.grid[# w, h] == -1)
			{
				//set to open door
				global.grid[# w, h] = 1;
				
				//print door
				var instances = ds_list_create();
				var n = collision_point_list(x, y, obj_Door1, false, true, instances, false);
				var i = 0;
				repeat ds_list_size(instances) 
				{
				    if (instances[| i].layer == "Instances_WallandFloor")
					{
				        instance_destroy(instances[| i]);
				    }
				    i++;
				}
				ds_list_destroy(instances);
			
				var floor1 = instance_create_layer(x, y, "Instances_WallandFloor", obj_floor1);
			}
			else if(global.grid[# w, h] == 1)
			{
				//set to close door
				global.grid[# w, h] = -1;
				if(left == -2 && right == -2 && (up == -1 || up == 0) && down == 0)
				{
					var door = instance_create_layer(x, y, "Instances_WallandFloor", obj_Door1);
					var targetDepth = layer_get_depth("Instances_WallandFloor"); // Whatever your layer is called
					door.depth = -targetDepth - 1;
				}
				else if(left == 0 && (right == -1 || right == 0) && up == -2 && down == -2)
				{
					var door = instance_create_layer(x, y, "Instances_WallandFloor", obj_Door2);
					var targetDepth = layer_get_depth("Instances_WallandFloor"); // Whatever your layer is called
					door.depth = -targetDepth - 1;
				}
			}
			
		}
	}
