x = obj_player.x + global.xdistance;
y = obj_player.y + global.ydistance;

	if(keyboard_check(vk_left) || keyboard_check(ord("A")))
	{
		global.xdistance = -32;
		global.ydistance = 0;
	}
	else if(keyboard_check(vk_right) || keyboard_check(ord("D")))
	{
		global.xdistance = 32;
		global.ydistance = 0;
	}
	else if(keyboard_check(vk_up) || keyboard_check(ord("W")))
	{
		global.xdistance = 0;
		global.ydistance = -32;
	}
	else if(keyboard_check(vk_down) || keyboard_check(ord("S")))
	{
		global.xdistance = 0;
		global.ydistance = 32;
	}
	
	if(global.canMove == true)
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
				
				//delete door
				var instances = ds_list_create();
				var n = collision_point_list(x, y, obj_Door1, false, true, instances, false);
				var n = collision_point_list(x, y, obj_Door2, false, true, instances, false);
				var i = 0;
				repeat ds_list_size(instances) 
				{
					instance_destroy(instances[| i]);
				    i++;
				}
				ds_list_destroy(instances);
				
				//change door
				if((left == -2 || left == 4) && (right == -2 || right == 4) && (up == -1 || up == 0 || up == 4) && (down == 0 || down == 4))
				{
					instance_create_layer((w * 32) + (room_width div 4), (h * 32) + (room_height div 4), "Instances_WallandFloor", obj_doorclose1);
				}
				else if((left == 0 || left == 4) && (right == -1 || right == 0 || right == 4) && (up == -2 || up == 4) && (down == -2 || down == 4))
				{ 
						instance_create_layer((w * 32) + (room_width div 4), (h * 32) + (room_height div 4), "Instances_WallandFloor", obj_doorclose2);
				}
			
			}
			else if(global.grid[# w, h] == 1)
			{
				//set to close door
				global.grid[# w, h] = -1;
				
				//change the object
				if((left == -2 || left == 4) && (right == -2 || right == 4) && (up == -1 || up == 0 || up == 4) && (down == 0 || down == 4))
				{
					
					//delete door
					var instances = ds_list_create();
					var n = collision_point_list(x, y, obj_doorclose1, false, true, instances, false);
					var i = 0;
					repeat ds_list_size(instances)
					{
						instance_destroy(instances[| i]);
					    i++;
					}
					ds_list_destroy(instances);
				
					//change door
					instance_create_layer((w * 32) + (room_width div 4), (h * 32) + (room_height div 4), "Instances_WallandFloor", obj_Door1);
				}
				else if((left == 0 || left == 4) && (right == -1 || right == 0 || right == 4) && (up == -2 || up == 4) && (down == -2 || down == 4))
				{
					var instances = ds_list_create();
					var n = collision_point_list(x, y, obj_doorclose2, false, true, instances, false);
					var i = 0;
					repeat ds_list_size(instances) 
					{
						instance_destroy(instances[| i]);
						i++
					}
					ds_list_destroy(instances);
					
					//change door
					instance_create_layer((w * 32) + (room_width div 4), (h * 32) + (room_height div 4), "Instances_WallandFloor", obj_Door2);
				}
			}
			
			//update if any changes
			change_fog();
			
		}
	}
