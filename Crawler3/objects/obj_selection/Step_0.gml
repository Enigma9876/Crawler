x = obj_player.x + global.xdistance;
y = obj_player.y + global.ydistance;

	if(keyboard_check(ord("A")) || keyboard_check_pressed(vk_left))
	{
		global.xdistance = -32;
		global.ydistance = 0;
	}
	else if(keyboard_check(ord("D")) || keyboard_check_pressed(vk_right))
	{
		global.xdistance = 32;
		global.ydistance = 0;
	}
	else if(keyboard_check(ord("W")) || keyboard_check_pressed(vk_up))
	{
		global.xdistance = 0;
		global.ydistance = -32;
	}
	else if(keyboard_check(ord("S")) || keyboard_check_pressed(vk_down))
	{
		global.xdistance = 0;
		global.ydistance = 32;
	}
	
	

	if(global.canMove == true)
	{
		var w = ((x - (room_width div 4)) div 32);
		var h = ((y - (room_height div 4)) div 32);
		if(keyboard_check_pressed(vk_space))
		{
			global.canMove = false;
			var left = global.grid[# w - 1,h];
			var right = global.grid[# w + 1,h];
			var up = global.grid[# w,h - 1];
			var down = global.grid[# w,h + 1];
			if(global.gridOrg[# w, h] == 5 || global.gridPow[# w,h] == 6 || global.gridPow[# w,h] == 7) //enemy
			{
				if(global.gridOrg[# w, h] == 5) //enemy
				{
				var instances = ds_list_create();
					var n = collision_point_list(x, y, obj_enemy1, false, true, instances, false);
					var n = collision_point_list(x, y, obj_enemy1Elite, false, true, instances, false);
					var n = collision_point_list(x, y, obj_enemy2, false, true, instances, false);
					var n = collision_point_list(x, y, obj_enemy2Elite, false, true, instances, false);
					var n = collision_point_list(x, y, obj_enemy3, false, true, instances, false);
					var i = 0;
					repeat ds_list_size(instances) 
					{
						instances[| i].hp -= 15;
						instances[| i].damaged = true;
						i++
					}
					ds_list_destroy(instances);
					global.turn += 1;
				}
					
				//pickup arrow
				else if(global.gridPow[# w,h] == 6 || global.gridPow[# w,h] == 7)
				{
					var instances = ds_list_create();
					var usedInstances = ds_list_create();
					for(var h2 = 16; h2 >= -16; h2--)
					{
						for(var w2 = 16; w2 >= -16; w2--)
						{
							var n = collision_point_list(x + w2, y + h2, obj_arrow, false, true, instances, false);
						}
					}
						var i = 0;
						repeat ds_list_size(instances)
						{
							var add = true;
							for(var j = 0; j < ds_list_size(usedInstances);j++)
							{
								show_debug_message(usedInstances[| i]);
								if(instances[| i] == usedInstances[| j])
								{
									add = false;
								}
							}
							if(add)
							{
								ds_list_add(usedInstances, instances[| i]);
								instance_destroy(instances[| i]);
								global.arrowCount++;
							}
							i++
						}
						ds_list_destroy(instances);
						ds_list_destroy(usedInstances);
					var instances = ds_list_create();
					var usedInstances = ds_list_create();
					for(var h2 = 16; h2 >= -16; h2--)
					{
						for(var w2 = 16; w2 >= -16; w2--)
						{
							var n = collision_point_list(x + w2, y + h2, obj_arrow2, false, true, instances, false);
						}
					}
						var i = 0;
						repeat ds_list_size(instances)
						{
							var add = true;
							for(var j = 0; j < ds_list_size(usedInstances);j++)
							{
								show_debug_message(usedInstances[| i]);
								if(instances[| i] == usedInstances[| j])
								{
									add = false;
								}
							}
							if(add)
							{
								ds_list_add(usedInstances, instances[| i]);
								instance_destroy(instances[| i]);
								global.arrowCount2++;
							}
							i++
							
						}
						ds_list_destroy(instances);
						ds_list_destroy(usedInstances);
					var instances = ds_list_create();
					var usedInstances = ds_list_create();
					for(var h2 = 16; h2 >= -16; h2--)
					{
						for(var w2 = 16; w2 >= -16; w2--)
						{
							var n = collision_point_list(x + w2, y + h2, obj_arrow3, false, true, instances, false);
						}
					}
						var i = 0;
						repeat ds_list_size(instances)
						{
							var add = true;
							for(var j = 0; j < ds_list_size(usedInstances);j++)
							{
								show_debug_message(usedInstances[| i]);
								if(instances[| i] == usedInstances[| j])
								{
									add = false;
								}
							}
							if(add)
							{
								ds_list_add(usedInstances, instances[| i]);
								instance_destroy(instances[| i]);
								global.arrowCount3++;
							}
							i++
							
						}
						ds_list_destroy(instances);
						ds_list_destroy(usedInstances);
					var instances = ds_list_create();
					var usedInstances = ds_list_create();
					for(var h2 = 16; h2 >= -16; h2--)
					{
						for(var w2 = 16; w2 >= -16; w2--)
						{
							var n = collision_point_list(x + w2, y + h2, obj_potion2, false, true, instances, false);
						}
					}
						var i = 0;
						repeat ds_list_size(instances)
						{
							var add = true;
							for(var j = 0; j < ds_list_size(usedInstances);j++)
							{
								show_debug_message(usedInstances[| i]);
								if(instances[| i] == usedInstances[| j])
								{
									add = false;
								}
							}
							if(add)
							{
								ds_list_add(usedInstances, instances[| i]);
								instance_destroy(instances[| i]);
								global.hp += 10;
							}
							i++
							
						}
						ds_list_destroy(instances);
						ds_list_destroy(usedInstances);
				
				}
				global.gridPow[# w,h] = 0;
			}
			else if(global.grid[# w, h] == -1)
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
				global.turn += 1;
				//update if any changes
				change_fog();
			
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
					global.turn += 1;
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
				global.turn += 1;
				//update if any changes
				change_fog();
			}
			
			
			//pickup potion
			if(global.gridOrg[# w,h] == 2)
			{
				global.gridOrg[# w,h] = 0;
				var instances = ds_list_create();
					var n = collision_point_list(x, y, obj_potion1, false, true, instances, false);
					var i = 0;
					repeat ds_list_size(instances) 
					{
						instance_destroy(instances[| i]);
						i++
						global.hp += 25;
					}
					ds_list_destroy(instances);
					global.turn += 1;
				
			}
			
			//walk into ladder
			if(global.grid[# w,h] == 9)
			{
				if(room == rm_tutorialRoom)
				{
					room = rm_main
				}
				else
				{
					global.levelCount++
					global.gridOrg = ds_grid_create(0, 0);
					global.gridPow = ds_grid_create(0,0);
					global.enemyCount = 0;
				
					// Create a reservation grid (same size as global.gridOrg)
					global.reservationGrid = ds_grid_create(ds_grid_width(global.gridOrg), ds_grid_height(global.gridOrg));
					ds_grid_clear(global.reservationGrid, 0);
				
					// Create a grid to represent walkable (0) and non-walkable (1) areas
					global.grid = ds_grid_create(global.grid_width, global.grid_height);

					global.gridRes = ds_grid_create(0,0);

					// fill the grid with walkable cells initially
					for (var i = 0; i < global.grid_width; i++) {
					    for (var j = 0; j < global.grid_height; j++) {
					        global.grid[# i, j] = 10; // set empty space outside
					    }
					}
				
					destroy_room();
				}
				
			}
			
			if(global.grid[# w,h] == 3)
			{
				global.grid[# w,h] = 0;
				var instances = ds_list_create();
				var n = collision_point_list(x, y, obj_box1, false, true, instances, false);
				var i = 0;
				repeat ds_list_size(instances) 
				{
					instances[| i].destroy = true;
					i++
				}
				ds_list_destroy(instances);
				global.turn += 1;
			}
			
		}
	}
