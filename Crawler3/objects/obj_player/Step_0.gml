if(global.canMove == true && !attack)
{
	if(!global.shootarrow)
	{
		if(keyboard_check(ord("A")))
		{
			obj_player.image_xscale = -1;
			global.xdistance = -32;
			global.ydistance = 0;
		}
		else if(keyboard_check(ord("D")))
		{
			obj_player.image_xscale = 1;
			global.xdistance = 32;
			global.ydistance = 0;
		} 
		else if(keyboard_check(ord("W")))
		{
			global.xdistance = 0;
			global.ydistance = -32;
		}
		else if(keyboard_check(ord("S")))
		{
			global.xdistance = 0;
			global.ydistance = 32;
		}
	}
	
	//press and hold feature
	if(keyboard_check(ord("W")))
	{
		if(global.gridOrg[# (x - 16 - (room_width div 4)) div 32, (y - 16 - (room_height div 4)) div 32 - 1] != 5)
		{
			if ((global.grid[# (x - 16 - (room_width div 4)) div 32, (y - 16 - (room_height div 4)) div 32 - 1] == 1 || global.grid[# (x - 16 - (room_width div 4)) div 32, (y - 16 - (room_height div 4)) div 32 - 1] == 0) || global.grid[# (x - 16 - (room_width div 4)) div 32, (y - 16 - (room_height div 4)) div 32 - 1] == 9 || global.grid[# (x - 16 - (room_width div 4)) div 32, (y - 16 - (room_height div 4)) div 32 - 1] == 8)
			{
				if(global.grid[# (x - 16 - (room_width div 4)) div 32, (y - 16 - (room_height div 4)) div 32 - 1] == 9)
				{
					if(room == rm_tutorialRoom)
					{
						room = rm_main;
					}
					else
					{
						global.gridOrg[# (x - 16 - (room_width div 4)) div 32, (y - 16 - (room_height div 4)) div 32] = 0;
						global.levelCount++;
						global.gridOrg = ds_grid_create(0,0);
						global.gridPow = ds_grid_create(0,0);
						global.enemyCount = 0;
				
						// Create a reservation grid (same size as global.gridOrg)
						global.reservationGrid = ds_grid_create(ds_grid_width(global.gridOrg), ds_grid_height(global.gridOrg));
						ds_grid_clear(global.reservationGrid, 0);
				
						// Create a grid to represent walkable (0) and non-walkable (1) areas
						global.grid = ds_grid_create(global.grid_width, global.grid_height);

						global.gridRes = ds_grid_create(0,0);

						// fill the grid with walkable cells initially
						for (var i = 0; i < global.grid_width; i++)
						{
						    for (var j = 0; j < global.grid_height; j++) 
							{
						        global.grid[# i, j] = 10; // set empty space outside
						    }
						}
				
						destroy_room();
						if (obj_global.alarm[0] < 0) 
						{
							obj_global.alarm[0] = 20;
							obj_global.alarm[1] = 1;
						}
						global.override = true;
					
					}
				}
				else
				{
					show_debug_message(global.gridOrg[# (x - 16 - (room_width div 4)) div 32, (y - 16 - (room_height div 4)) div 32 - 1]);
					Move_up = true;
					firstTouch = true;
					global.gridOrg[# (x - 16 - (room_width div 4)) div 32, (y - 16 - (room_height div 4)) div 32] = 0;
					global.gridOrg[# (x - 16 - (room_width div 4)) div 32, (y - 48 - (room_height div 4)) div 32] = 4;
					global.turn += 1;
					global.xdistance = 0;
					global.ydistance = -32;
				}

			}
		}
		
		
		//check
		if(checkCoolDown && !global.override)
		{
			var w = ((x + global.xdistance - (room_width div 4)) div 32);
			var h = ((y + global.ydistance - (room_height div 4)) div 32);
			var left = global.grid[# w - 1,h];
			var right = global.grid[# w + 1,h];
			var up = global.grid[# w,h - 1];
			var down = global.grid[# w,h + 1];
			if(global.gridOrg[# w, h] == 5) //enemy
			{
				if(global.gridOrg[# w, h] == 5) //enemy
				{
				var instances = ds_list_create();
					var n = collision_point_list(x + global.xdistance, y + global.ydistance, obj_enemy1, false, true, instances, false);
					var n = collision_point_list(x + global.xdistance, y + global.ydistance, obj_enemy1Elite, false, true, instances, false);
					var n = collision_point_list(x + global.xdistance, y + global.ydistance, obj_enemy2, false, true, instances, false);
					var n = collision_point_list(x + global.xdistance, y + global.ydistance, obj_enemy2Elite, false, true, instances, false);
					var n = collision_point_list(x + global.xdistance, y + global.ydistance, obj_enemy3, false, true, instances, false);
					var i = 0;
					repeat ds_list_size(instances) 
					{
						var chance = irandom_range(1,100);
						
						if(chance <= global.crit)
						{
							instances[| i].hp -= global.damage * 2;
							var text = instance_create_layer(obj_player.x, obj_player.y, "Instances_Global", obj_ItemPickup);
									text.objectToFollow = obj_player;
									text.text = "CRIT";
									text.rarity = "red";
						}
						else
						instances[| i].hp -= global.damage;
						instances[| i].damaged = true;
						instances[| i].xprevious = 0;
						obj_player.attack = true;
						obj_player.attackx = w;
						obj_player.attacky = h;
						i++
					}
					ds_list_destroy(instances);
					global.turn += 1;
					alarm_set(3,10);
					checkCoolDown = false;
				}
			}
			else if(global.grid[# w, h] == -1 && !(global.gridPow[# w,h] == 6 || global.gridPow[# w,h] == 7 || global.gridPow[# w,h] == 12 || global.gridPow[# w,h] == 2))
			{
				//set to open door
				global.grid[# w, h] = 1;
				
				//delete door
				var instances = ds_list_create();
				var n = collision_point_list(x + global.xdistance, y + global.ydistance, obj_Door1, false, true, instances, false);
				var n = collision_point_list(x + global.xdistance, y + global.ydistance, obj_Door2, false, true, instances, false);
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
					var door = instance_create_layer((w * 32) + (room_width div 4), (h * 32) + (room_height div 4), "Instances_WallandFloor", obj_doorclose1);
					door.xprevious = 0;
				}
				else if((left == 0 || left == 4) && (right == -1 || right == 0 || right == 4) && (up == -2 || up == 4) && (down == -2 || down == 4))
				{ 
						var door = instance_create_layer((w * 32) + (room_width div 4), (h * 32) + (room_height div 4), "Instances_WallandFloor", obj_doorclose2);
						door.xprevious = 0;
				}
				global.turn += 1;
				alarm_set(3,10);
				checkCoolDown = false;
				//update if any changes
				change_fog();
			
			}
			
			if(global.grid[# w,h] == 3)
			{
				global.grid[# w,h] = 0;
				var instances = ds_list_create();
				var n = collision_point_list(x + global.xdistance, y + global.ydistance, obj_box1, false, true, instances, false);
				var i = 0;
				repeat ds_list_size(instances) 
				{
					instances[| i].destroy = true;
					instances[| i].xprevious = 0;
					obj_player.attack = true;
					obj_player.attackx = w;
					obj_player.attacky = h;
					i++
				}
				ds_list_destroy(instances);
				global.turn += 1;
				alarm_set(3,10);
				checkCoolDown = false;
			}
			//chest
			if(global.grid[# w,h] == 14 && global.keyCount > 0)
			{
				global.grid[# w,h] = 0;
				var instances = ds_list_create();
				var n = collision_point_list(x + global.xdistance, y + global.ydistance, obj_chest1, false, true, instances, false);
				var i = 0;
				repeat ds_list_size(instances) 
				{
					instances[| i].open = true;
					instances[| i].xprevious = 0;
					obj_player.openChest = true;
					obj_player.attackx = w;
					obj_player.attacky = h;
					i++
				}
				ds_list_destroy(instances);
				global.keyCount --;
				var index = ds_list_find_index(global.inventory, "key");
	
				if (index != -1)
				{
					ds_list_delete(global.inventory, index);
				}
				//global.turn += 1;
				alarm_set(3,10);
				checkCoolDown = false;
			}
			else if(global.grid[# w,h] == 14 && global.keyCount == 0)
			{
				var instances = ds_list_create();
				var n = collision_point_list(x + global.xdistance, y + global.ydistance, obj_chest1, false, true, instances, false);
				var i = 0;
				repeat ds_list_size(instances) 
				{
					var text = instance_create_layer(instances[| i].x - 48, instances[| i].y, "Instances_Global", obj_ItemPickup);
					text.objectToFollow = instances[| i];
					text.text = "need gold key";
					i++
				}
				ds_list_destroy(instances);
				alarm_set(3,10);
				checkCoolDown = false;
			}
		}
			
			
	}
	else if(keyboard_check(ord("D")))
	{
		if(global.gridOrg[# (x - 16 - (room_width div 4)) div 32 + 1, (y - 16 - (room_height div 4)) div 32] != 5)
		{
			if ((global.grid[# (x - 16 - (room_width div 4)) div 32 + 1, (y - 16 - (room_height div 4)) div 32] == 1 || global.grid[# (x - 16 - (room_width div 4)) div 32 + 1, (y - 16 - (room_height div 4)) div 32] == 0) || global.grid[# (x - 16 - (room_width div 4)) div 32 + 1, (y - 16 - (room_height div 4)) div 32] == 9 || global.grid[# (x - 16 - (room_width div 4)) div 32 + 1, (y - 16 - (room_height div 4)) div 32] == 8)
			{
				image_xscale = 1;
				if(global.grid[# (x - 16 - (room_width div 4)) div 32 + 1, (y - 16 - (room_height div 4)) div 32] == 9)
				{
					if(room == rm_tutorialRoom)
					{
						room = rm_main
					}
					else
					{
						global.gridOrg[# (x - 16 - (room_width div 4)) div 32, (y - 16 - (room_height div 4)) div 32] = 0;
						global.levelCount++;
						global.gridOrg = ds_grid_create(0,0);
						global.gridPow = ds_grid_create(0,0);
						global.enemyCount = 0;
				
						// Create a reservation grid (same size as global.gridOrg)
						global.reservationGrid = ds_grid_create(ds_grid_width(global.gridOrg), ds_grid_height(global.gridOrg));
						ds_grid_clear(global.reservationGrid, 0);
				
						// Create a grid to represent walkable (0) and non-walkable (1) areas
						global.grid = ds_grid_create(global.grid_width, global.grid_height);

						global.gridRes = ds_grid_create(0,0);

						// fill the grid with walkable cells initially
						for (var i = 0; i < global.grid_width; i++)
						{
						    for (var j = 0; j < global.grid_height; j++) 
							{
						        global.grid[# i, j] = 10; // set empty space outside
						    }
						}
				
						destroy_room();
						if (obj_global.alarm[0] < 0) 
						{
							obj_global.alarm[0] = 20;
							obj_global.alarm[1] = 1;
						}
						global.override = true;
					}
				}
				else
				{
					Move_right = true;
					firstTouch = true;
					global.gridOrg[# (x - 16 - (room_width div 4)) div 32, (y - 16 - (room_height div 4)) div 32] = 0;
					global.gridOrg[# (x + 16 - (room_width div 4)) div 32, (y - 16 - (room_height div 4)) div 32] = 4;
					global.turn += 1;
					global.xdistance = 32;
					global.ydistance = 0;
				}
			
			}
		}
		
		//check
		if(checkCoolDown && !global.override)
		{
			var w = ((x + global.xdistance - (room_width div 4)) div 32);
			var h = ((y + global.ydistance - (room_height div 4)) div 32);
			var left = global.grid[# w - 1,h];
			var right = global.grid[# w + 1,h];
			var up = global.grid[# w,h - 1];
			var down = global.grid[# w,h + 1];
			if(global.gridOrg[# w, h] == 5) //enemy
			{
				if(global.gridOrg[# w, h] == 5) //enemy
				{
				var instances = ds_list_create();
					var n = collision_point_list(x + global.xdistance, y + global.ydistance, obj_enemy1, false, true, instances, false);
					var n = collision_point_list(x + global.xdistance, y + global.ydistance, obj_enemy1Elite, false, true, instances, false);
					var n = collision_point_list(x + global.xdistance, y + global.ydistance, obj_enemy2, false, true, instances, false);
					var n = collision_point_list(x + global.xdistance, y + global.ydistance, obj_enemy2Elite, false, true, instances, false);
					var n = collision_point_list(x + global.xdistance, y + global.ydistance, obj_enemy3, false, true, instances, false);
					var i = 0;
					repeat ds_list_size(instances) 
					{
						var chance = irandom_range(1,100);
						
						if(chance <= global.crit)
						{
							instances[| i].hp -= global.damage * 2;
							var text = instance_create_layer(obj_player.x, obj_player.y, "Instances_Global", obj_ItemPickup);
									text.objectToFollow = obj_player;
									text.text = "CRIT";
									text.rarity = "red";
						}
						else
						instances[| i].hp -= global.damage;
						instances[| i].damaged = true;
						instances[| i].xprevious = 0;
						obj_player.attack = true;
						obj_player.attackx = w;
						obj_player.attacky = h;
						i++
					}
					ds_list_destroy(instances);
					global.turn += 1;
					alarm_set(3,10);
					checkCoolDown = false;
				}
			}
			else if(global.grid[# w, h] == -1 && !(global.gridPow[# w,h] == 6 || global.gridPow[# w,h] == 7 || global.gridPow[# w,h] == 12 || global.gridPow[# w,h] == 2))
			{
				//set to open door
				global.grid[# w, h] = 1;
				
				//delete door
				var instances = ds_list_create();
				var n = collision_point_list(x + global.xdistance, y + global.ydistance, obj_Door1, false, true, instances, false);
				var n = collision_point_list(x + global.xdistance, y + global.ydistance, obj_Door2, false, true, instances, false);
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
					var door = instance_create_layer((w * 32) + (room_width div 4), (h * 32) + (room_height div 4), "Instances_WallandFloor", obj_doorclose1);
					door.xprevious = 0;
				}
				else if((left == 0 || left == 4) && (right == -1 || right == 0 || right == 4) && (up == -2 || up == 4) && (down == -2 || down == 4))
				{ 
						var door = instance_create_layer((w * 32) + (room_width div 4), (h * 32) + (room_height div 4), "Instances_WallandFloor", obj_doorclose2);
						door.xprevious = 0;
				}
				global.turn += 1;
				alarm_set(3,10);
				checkCoolDown = false;
				//update if any changes
				change_fog();
			
			}
			
			if(global.grid[# w,h] == 3)
			{
				show_debug_message("hit box");
				global.grid[# w,h] = 0;
				var instances = ds_list_create();
				var n = collision_point_list(x + global.xdistance, y + global.ydistance, obj_box1, false, true, instances, false);
				var i = 0;
				repeat ds_list_size(instances) 
				{
					instances[| i].destroy = true;
					instances[| i].xprevious = 0;
					obj_player.attack = true;
					obj_player.attackx = w;
					obj_player.attacky = h;
					i++
				}
				ds_list_destroy(instances);
				global.turn += 1;
				alarm_set(3,10);
				checkCoolDown = false;
			}
			//chest
			if(global.grid[# w,h] == 14 && global.keyCount > 0)
			{
				global.grid[# w,h] = 0;
				var instances = ds_list_create();
				var n = collision_point_list(x + global.xdistance, y + global.ydistance, obj_chest1, false, true, instances, false);
				var i = 0;
				repeat ds_list_size(instances) 
				{
					instances[| i].open = true;
					instances[| i].xprevious = 0;
					obj_player.openChest = true;
					obj_player.attackx = w;
					obj_player.attacky = h;
					i++
				}
				ds_list_destroy(instances);
				global.keyCount --;
				var index = ds_list_find_index(global.inventory, "key");
	
				if (index != -1)
				{
					ds_list_delete(global.inventory, index);
				}
				//global.turn += 1;
				alarm_set(3,10);
				checkCoolDown = false;
			}
			else if(global.grid[# w,h] == 14 && global.keyCount == 0)
			{
				var instances = ds_list_create();
				var n = collision_point_list(x + global.xdistance, y + global.ydistance, obj_chest1, false, true, instances, false);
				var i = 0;
				repeat ds_list_size(instances) 
				{
					var text = instance_create_layer(instances[| i].x - 48, instances[| i].y, "Instances_Global", obj_ItemPickup);
					text.objectToFollow = instances[| i];
					text.text = "need gold key";
					i++
				}
				ds_list_destroy(instances);
				alarm_set(3,10);
				checkCoolDown = false;
			}
		}
	}
	else if(keyboard_check(ord("S")))
	{
		if(global.gridOrg[# (x - 16 - (room_width div 4)) div 32, (y - 16 - (room_height div 4)) div 32 + 1] != 5)
		{
			if ((global.grid[# (x - 16 - (room_width div 4)) div 32, (y - 16 - (room_height div 4)) div 32 + 1] == 1 || global.grid[# (x - 16 - (room_width div 4)) div 32, (y - 16 - (room_height div 4)) div 32 + 1] == 0) || global.grid[# (x - 16 - (room_width div 4)) div 32, (y - 16 - (room_height div 4)) div 32 + 1] == 9 || global.grid[# (x - 16 - (room_width div 4)) div 32, (y - 16 - (room_height div 4)) div 32 + 1] == 8)
			{
				if(global.grid[# (x - 16 - (room_width div 4)) div 32, (y - 16 - (room_height div 4)) div 32 + 1] == 9)
				{
					if(room == rm_tutorialRoom)
					{
						room = rm_main
					}
					else
					{
						global.gridOrg[# (x - 16 - (room_width div 4)) div 32, (y - 16 - (room_height div 4)) div 32] = 0;
						global.levelCount++;
						global.gridOrg = ds_grid_create(0,0);
						global.gridPow = ds_grid_create(0,0);
						global.enemyCount = 0;
				
						// Create a reservation grid (same size as global.gridOrg)
						global.reservationGrid = ds_grid_create(ds_grid_width(global.gridOrg), ds_grid_height(global.gridOrg));
						ds_grid_clear(global.reservationGrid, 0);
				
						// Create a grid to represent walkable (0) and non-walkable (1) areas
						global.grid = ds_grid_create(global.grid_width, global.grid_height);

						global.gridRes = ds_grid_create(0,0);

						// fill the grid with walkable cells initially
						for (var i = 0; i < global.grid_width; i++)
						{
						    for (var j = 0; j < global.grid_height; j++) 
							{
						        global.grid[# i, j] = 10; // set empty space outside
						    }
						}
				
						destroy_room();
						if (obj_global.alarm[0] < 0) 
						{
							obj_global.alarm[0] = 20;
							obj_global.alarm[1] = 1;
						}
						global.override = true;
					}
				}
				else
				{
					Move_down = true;
					firstTouch = true;
					global.gridOrg[# (x - 16 - (room_width div 4)) div 32, (y - 16 - (room_height div 4)) div 32] = 0;
					global.gridOrg[# (x - 16 - (room_width div 4)) div 32, (y + 16 - (room_height div 4)) div 32] = 4;
					global.turn += 1;
					global.xdistance = 0;
					global.ydistance = 32;
				}
			
			}
		}
		
		//check
		if(checkCoolDown && !global.override)
		{
			var w = ((x + global.xdistance - (room_width div 4)) div 32);
			var h = ((y + global.ydistance - (room_height div 4)) div 32);
			var left = global.grid[# w - 1,h];
			var right = global.grid[# w + 1,h];
			var up = global.grid[# w,h - 1];
			var down = global.grid[# w,h + 1];
			if(global.gridOrg[# w, h] == 5) //enemy
			{
				if(global.gridOrg[# w, h] == 5) //enemy
				{
				var instances = ds_list_create();
					var n = collision_point_list(x + global.xdistance, y + global.ydistance, obj_enemy1, false, true, instances, false);
					var n = collision_point_list(x + global.xdistance, y + global.ydistance, obj_enemy1Elite, false, true, instances, false);
					var n = collision_point_list(x + global.xdistance, y + global.ydistance, obj_enemy2, false, true, instances, false);
					var n = collision_point_list(x + global.xdistance, y + global.ydistance, obj_enemy2Elite, false, true, instances, false);
					var n = collision_point_list(x + global.xdistance, y + global.ydistance, obj_enemy3, false, true, instances, false);
					var i = 0;
					repeat ds_list_size(instances) 
					{
						var chance = irandom_range(1,100);
						
						if(chance <= global.crit)
						{
							instances[| i].hp -= global.damage * 2;
							var text = instance_create_layer(obj_player.x, obj_player.y, "Instances_Global", obj_ItemPickup);
									text.objectToFollow = obj_player;
									text.text = "CRIT";
									text.rarity = "red";
						}
						else
						instances[| i].hp -= global.damage;
						instances[| i].damaged = true;
						instances[| i].xprevious = 0;
						obj_player.attack = true;
						obj_player.attackx = w;
						obj_player.attacky = h;
						i++
					}
					ds_list_destroy(instances);
					global.turn += 1;
					alarm_set(3,10);
					checkCoolDown = false;
				}
			}
			else if(global.grid[# w, h] == -1 && !(global.gridPow[# w,h] == 6 || global.gridPow[# w,h] == 7 || global.gridPow[# w,h] == 12 || global.gridPow[# w,h] == 2))
			{
				//set to open door
				global.grid[# w, h] = 1;
				
				//delete door
				var instances = ds_list_create();
				var n = collision_point_list(x + global.xdistance, y + global.ydistance, obj_Door1, false, true, instances, false);
				var n = collision_point_list(x + global.xdistance, y + global.ydistance, obj_Door2, false, true, instances, false);
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
					var door = instance_create_layer((w * 32) + (room_width div 4), (h * 32) + (room_height div 4), "Instances_WallandFloor", obj_doorclose1);
					door.xprevious = 0;
				}
				else if((left == 0 || left == 4) && (right == -1 || right == 0 || right == 4) && (up == -2 || up == 4) && (down == -2 || down == 4))
				{ 
						var door = instance_create_layer((w * 32) + (room_width div 4), (h * 32) + (room_height div 4), "Instances_WallandFloor", obj_doorclose2);
						door.xprevious = 0;
				}
				global.turn += 1;
				alarm_set(3,10);
				checkCoolDown = false;
				//update if any changes
				change_fog();
			
			}
			
			if(global.grid[# w,h] == 3)
			{
				show_debug_message("hit box");
				global.grid[# w,h] = 0;
				var instances = ds_list_create();
				var n = collision_point_list(x + global.xdistance, y + global.ydistance, obj_box1, false, true, instances, false);
				var i = 0;
				repeat ds_list_size(instances) 
				{
					instances[| i].destroy = true;
					instances[| i].xprevious = 0;
					obj_player.attack = true;
					obj_player.attackx = w;
					obj_player.attacky = h;
					i++
				}
				ds_list_destroy(instances);
				global.turn += 1;
				alarm_set(3,10);
				checkCoolDown = false;
			}
			//chest
			if(global.grid[# w,h] == 14 && global.keyCount > 0)
			{
				global.grid[# w,h] = 0;
				var instances = ds_list_create();
				var n = collision_point_list(x + global.xdistance, y + global.ydistance, obj_chest1, false, true, instances, false);
				var i = 0;
				repeat ds_list_size(instances) 
				{
					instances[| i].open = true;
					instances[| i].xprevious = 0;
					obj_player.openChest = true;
					obj_player.attackx = w;
					obj_player.attacky = h;
					i++
				}
				ds_list_destroy(instances);
				global.keyCount --;
				var index = ds_list_find_index(global.inventory, "key");
	
				if (index != -1)
				{
					ds_list_delete(global.inventory, index);
				}
				//global.turn += 1;
				alarm_set(3,10);
				checkCoolDown = false;
			}
			else if(global.grid[# w,h] == 14 && global.keyCount == 0)
			{
				var instances = ds_list_create();
				var n = collision_point_list(x + global.xdistance, y + global.ydistance, obj_chest1, false, true, instances, false);
				var i = 0;
				repeat ds_list_size(instances) 
				{
					var text = instance_create_layer(instances[| i].x - 48, instances[| i].y, "Instances_Global", obj_ItemPickup);
					text.objectToFollow = instances[| i];
					text.text = "need gold key";
					i++
				}
				ds_list_destroy(instances);
				alarm_set(3,10);
				checkCoolDown = false;
			}
		}
	}
	else if(keyboard_check(ord("A")))
	{
		if(global.gridOrg[# (x - 16 - (room_width div 4)) div 32 - 1, (y - 16 - (room_height div 4)) div 32] != 5)
		{
			if (global.gridOrg[# (x - 16 - (room_width div 4)) div 32 - 1, (y - 16 - (room_height div 4)) div 32] != 5 && (global.grid[# ((x - 16 - (room_width div 4)) div 32 - 1), ((y - 16 - (room_height div 4)) div 32)] == 1 || global.grid[# ((x - 16 - (room_width div 4)) div 32 - 1), ((y - 16 - (room_height div 4)) div 32)] == 0) || global.grid[# (x - 16 - (room_width div 4)) div 32 - 1, (y - 16 - (room_height div 4)) div 32] == 9 || global.grid[# (x - 16 - (room_width div 4)) div 32 - 1, (y - 16 - (room_height div 4)) div 32] == 8)
			{
				image_xscale = -1;
				if(global.grid[# (x - 16 - (room_width div 4)) div 32 - 1, (y - 16 - (room_height div 4)) div 32] == 9)
				{
					if(room == rm_tutorialRoom)
					{
						room = rm_main;
					}
					else
					{
						global.gridOrg[# (x - 16 - (room_width div 4)) div 32, (y - 16 - (room_height div 4)) div 32] = 0;
						global.levelCount++;
						global.gridOrg = ds_grid_create(0,0);
						global.gridPow = ds_grid_create(0,0);
						global.enemyCount = 0;
				
						// Create a reservation grid (same size as global.gridOrg)
						global.reservationGrid = ds_grid_create(ds_grid_width(global.gridOrg), ds_grid_height(global.gridOrg));
						ds_grid_clear(global.reservationGrid, 0);
				
						// Create a grid to represent walkable (0) and non-walkable (1) areas
						global.grid = ds_grid_create(global.grid_width, global.grid_height);

						global.gridRes = ds_grid_create(0,0);

						// fill the grid with walkable cells initially
						for (var i = 0; i < global.grid_width; i++)
						{
						    for (var j = 0; j < global.grid_height; j++) 
							{
						        global.grid[# i, j] = 10; // set empty space outside
						    }
						}
				
						destroy_room();
						if (obj_global.alarm[0] < 0) 
						{
							obj_global.alarm[0] = 20;
							obj_global.alarm[1] = 1;
						}
						global.override = true;
					}
				}
				else
				{
					Move_left = true;
					firstTouch = true;
					global.gridOrg[# (x - 16 - (room_width div 4)) div 32, (y - 16 - (room_height div 4)) div 32] = 0;
					global.gridOrg[# (x - 48 - (room_width div 4)) div 32, (y - 16 - (room_height div 4)) div 32] = 4;
					global.turn += 1;
					global.xdistance = -32;
					global.ydistance = 0;
				}

			}
		}
		
		//check
		if(checkCoolDown && !global.override)
		{
			var w = ((x + global.xdistance - (room_width div 4)) div 32);
			var h = ((y + global.ydistance - (room_height div 4)) div 32);
			var left = global.grid[# w - 1,h];
			var right = global.grid[# w + 1,h];
			var up = global.grid[# w,h - 1];
			var down = global.grid[# w,h + 1];
			if(global.gridOrg[# w, h] == 5) //enemy
			{
				if(global.gridOrg[# w, h] == 5) //enemy
				{
				var instances = ds_list_create();
					var n = collision_point_list(x + global.xdistance, y + global.ydistance, obj_enemy1, false, true, instances, false);
					var n = collision_point_list(x + global.xdistance, y + global.ydistance, obj_enemy1Elite, false, true, instances, false);
					var n = collision_point_list(x + global.xdistance, y + global.ydistance, obj_enemy2, false, true, instances, false);
					var n = collision_point_list(x + global.xdistance, y + global.ydistance, obj_enemy2Elite, false, true, instances, false);
					var n = collision_point_list(x + global.xdistance, y + global.ydistance, obj_enemy3, false, true, instances, false);
					var i = 0;
					repeat ds_list_size(instances) 
					{
						var chance = irandom_range(1,100);
						
						if(chance <= global.crit)
						{
							instances[| i].hp -= global.damage * 2;
							var text = instance_create_layer(obj_player.x, obj_player.y, "Instances_Global", obj_ItemPickup);
									text.objectToFollow = obj_player;
									text.text = "CRIT";
									text.rarity = "red";
						}
						else
						instances[| i].hp -= global.damage;
						instances[| i].damaged = true;
						instances[| i].xprevious = 0;
						obj_player.attack = true;
						obj_player.attackx = w;
						obj_player.attacky = h;
						i++
					}
					ds_list_destroy(instances);
					global.turn += 1;
					alarm_set(3,10);
					checkCoolDown = false;
				}
			}
			else if(global.grid[# w, h] == -1 && !(global.gridPow[# w,h] == 6 || global.gridPow[# w,h] == 7 || global.gridPow[# w,h] == 12 || global.gridPow[# w,h] == 2))
			{
				//set to open door
				global.grid[# w, h] = 1;
				
				//delete door
				var instances = ds_list_create();
				var n = collision_point_list(x + global.xdistance, y + global.ydistance, obj_Door1, false, true, instances, false);
				var n = collision_point_list(x + global.xdistance, y + global.ydistance, obj_Door2, false, true, instances, false);
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
					var door = instance_create_layer((w * 32) + (room_width div 4), (h * 32) + (room_height div 4), "Instances_WallandFloor", obj_doorclose1);
					door.xprevious = 0;
				}
				else if((left == 0 || left == 4) && (right == -1 || right == 0 || right == 4) && (up == -2 || up == 4) && (down == -2 || down == 4))
				{ 
						var door = instance_create_layer((w * 32) + (room_width div 4), (h * 32) + (room_height div 4), "Instances_WallandFloor", obj_doorclose2);
						door.xprevious = 0;
				}
				global.turn += 1;
				alarm_set(3,10);
				checkCoolDown = false;
				//update if any changes
				change_fog();
			
			}
			
			if(global.grid[# w,h] == 3)
			{
				show_debug_message("hit box");
				global.grid[# w,h] = 0;
				var instances = ds_list_create();
				var n = collision_point_list(x + global.xdistance, y + global.ydistance, obj_box1, false, true, instances, false);
				var i = 0;
				repeat ds_list_size(instances) 
				{
					instances[| i].destroy = true;
					instances[| i].xprevious = 0;
					obj_player.attack = true;
					obj_player.attackx = w;
					obj_player.attacky = h;
					i++
				}
				ds_list_destroy(instances);
				global.turn += 1;
				alarm_set(3,10);
				checkCoolDown = false;
			}
			//chest
			if(global.grid[# w,h] == 14 && global.keyCount > 0)
			{
				global.grid[# w,h] = 0;
				var instances = ds_list_create();
				var n = collision_point_list(x + global.xdistance, y + global.ydistance, obj_chest1, false, true, instances, false);
				var i = 0;
				repeat ds_list_size(instances) 
				{
					instances[| i].open = true;
					instances[| i].xprevious = 0;
					obj_player.openChest = true;
					obj_player.attackx = w;
					obj_player.attacky = h;
					i++
				}
				ds_list_destroy(instances);
				global.keyCount --;
				var index = ds_list_find_index(global.inventory, "key");
	
				if (index != -1)
				{
					ds_list_delete(global.inventory, index);
				}
				//global.turn += 1;
				alarm_set(3,10);
				checkCoolDown = false;
			}
			else if(global.grid[# w,h] == 14 && global.keyCount == 0)
			{
				var instances = ds_list_create();
				var n = collision_point_list(x + global.xdistance, y + global.ydistance, obj_chest1, false, true, instances, false);
				var i = 0;
				repeat ds_list_size(instances) 
				{
					var text = instance_create_layer(instances[| i].x - 48, instances[| i].y, "Instances_Global", obj_ItemPickup);
					text.objectToFollow = instances[| i];
					text.text = "need gold key";
					i++
				}
				ds_list_destroy(instances);
				alarm_set(3,10);
				checkCoolDown = false;
			}
		}
		
	}
	
	else if(mouse_check_button_pressed(mb_right) && !attack)
	{
		if(global.arrowCount > 0 && global.activeItem == "arrow")
		{
			arrowdirx = obj_selection.x;
			arrowdiry = obj_selection.y;
			if(arrowdirx > x)
				image_xscale = 1;
			else if(arrowdirx < x)
				image_xscale = -1;
			global.shootarrow = true;
			alarm_set(0, 32);
		}
		else if(global.arrowCount <= 0 && global.activeItem == "arrow")
		{
			
			var discardP = instance_create_layer(obj_player.x,obj_player.y, "Instances_Global", obj_ItemPickup);
			discardP.text = "out of arrows";
			discardP.objectToFollow = obj_player;
		}
		else if(global.arrowCount2 > 0 && global.activeItem == "arrow2")
		{
			arrowdirx = obj_selection.x;
			arrowdiry = obj_selection.y;
			if(arrowdirx > x)
				image_xscale = 1;
			else if(arrowdirx < x)
				image_xscale = -1;
			global.shootarrow = true;
			teleport = true;
			alarm_set(1, 90);
		}
		else if(global.arrowCount2 <= 0 && global.activeItem == "arrow2")
		{
			var discardP = instance_create_layer(obj_player.x,obj_player.y, "Instances_Global", obj_ItemPickup);
			discardP.text = "out of arrows";
			discardP.objectToFollow = obj_player;
		}
		else if(global.arrowCount3 > 0 && global.activeItem == "arrow3")
		{
			arrowdirx = obj_selection.x;
			arrowdiry = obj_selection.y;
			if(arrowdirx > x)
				image_xscale = 1;
			else if(arrowdirx < x)
				image_xscale = -1;
			global.shootarrow = true;
			alarm_set(2, 32);
		}
		else if(global.arrowCount3 <= 0 && global.activeItem == "arrow3")
		{
			var discardP = instance_create_layer(obj_player.x,obj_player.y, "Instances_Global", obj_ItemPickup);
			discardP.text = "out of arrows";
			discardP.objectToFollow = obj_player;
		}
	}

	
}

	if(Move_left)
	{
		if(left_values)
		{
			left_start_x = x;
			left_end_x = x - 32;
			left_start_y = y;
			left_end_y = y;
		}
		left_values = false;
		if (left_move_progress < left_move_target)
		{
		    left_move_progress += 7.5;
		    var _progress_factor = (sin(left_move_progress / left_move_target * (pi / 2)));

	        // Apply the easing to the lerp
	        obj_player.x = round(lerp(left_start_x, left_end_x, _progress_factor));
	        obj_player.y = round(lerp(left_start_y, left_end_y, _progress_factor));
		}
		else
		{
			Move_left = false;
			left_values = true;
			left_move_progress = 0;
			show_debug_message("x value: " + string(x));
			change_fog();

		}
	}

	if(Move_right)
	{
		if(right_values)
		{
			right_start_x = x;
			right_end_x = x + 32;
			right_start_y = y;
			right_end_y = y;
		}
		right_values = false;
		if (right_move_progress < right_move_target)
		{
		    right_move_progress += 7.5;
		    var _progress_factor_right = (sin(right_move_progress / right_move_target * (pi / 2)));

			// Apply the easing to the lerp for right movement
			obj_player.x = round(lerp(right_start_x, right_end_x, _progress_factor_right));
			obj_player.y = round(lerp(right_start_y, right_end_y, _progress_factor_right));
		}
		else
		{
			Move_right = false;
			right_values = true;
			right_move_progress = 0;
			change_fog();
		}
	}

	if(Move_up)
	{
		if(up_values)
		{
			up_start_x = x;
			up_end_x = x;
			up_start_y = y;
			up_end_y = y - 32;
		}
		up_values = false;
		if (up_move_progress < up_move_target)
		{
		    up_move_progress += 7.5;
		    var _progress_factor_up = (sin(up_move_progress / up_move_target * (pi / 2)));

			// Apply the easing to the lerp for up movement
			obj_player.x = round(lerp(up_start_x, up_end_x, _progress_factor_up));
			obj_player.y = round(lerp(up_start_y, up_end_y, _progress_factor_up));
		}
		else
		{
			Move_up = false;
			up_values = true;
			up_move_progress = 0;
			change_fog();
		}
	}

	if(Move_down)
	{
		if(down_values)
		{
			down_start_x = x;
			down_end_x = x;
			down_start_y = y;
			down_end_y = y + 32;
		}
		down_values = false;
		if (down_move_progress < down_move_target)
		{
		    down_move_progress += 7.5;
		    var _progress_factor_down = (sin(down_move_progress / down_move_target * (pi / 2)));

			// Apply the easing to the lerp for down movement
			obj_player.x = round(lerp(down_start_x, down_end_x, _progress_factor_down));
			obj_player.y = round(lerp(down_start_y, down_end_y, _progress_factor_down));
		}
		else
		{
			Move_down = false;
			down_values = true;
			down_move_progress = 0;
			change_fog();
		}
	}
	
	if(attack || openChest)
	{
		if(attack_values)
		{
			attack_start_x = x;
			if(attackx > (x - 16 - (room_width div 4)) div 32)
			{
				attack_end_x = x + 10;
			}
			else if(attackx < (x - 16 - (room_width div 4)) div 32)
			{
				attack_end_x = x - 10;
			}
			else
			{
				attack_end_x = x;
			}
			attack_start_y = y;
			
			if(attacky > (y - 16 - (room_height div 4)) div 32)
			{
				attack_end_y = y + 10;
			}
			else if(attacky < (y - 16 - (room_height div 4)) div 32)
			{
				attack_end_y = y - 10;
			}
			else
			{
				attack_end_y = y;
			}
		}
		
		attack_values = false;
		
		if(attack_move_progress < attack_move_target && !moveBack)
		{
		    attack_move_progress += 1.25;
		    var _progress_factor_down = (sin(attack_move_progress / attack_move_target * (pi / 2)));

			// Apply the easing to the lerp for down movement
			x = round(lerp(attack_start_x, attack_end_x, _progress_factor_down));
			y = round(lerp(attack_start_y, attack_end_y, _progress_factor_down));
		}
		else if(!moveBack)
		{
			//Move_down = false;
			//down_values = true;
			attack_move_progress = 0;
			moveBack = true;
		}
		
		if(attack_move_progress < attack_move_target && moveBack)
		{
		    attack_move_progress += 1.25;
		    var _progress_factor_down = (sin(attack_move_progress / attack_move_target * (pi / 2)));

			// Apply the easing to the lerp for down movement
			x = round(lerp(attack_end_x, attack_start_x, _progress_factor_down));
			y = round(lerp(attack_end_y, attack_start_y, _progress_factor_down));
		}
		else if(moveBack)
		{
			attack = false;
			openChest = false;
			attack_values = true;
			attack_move_progress = 0;
			moveBack = false;
		}
	} 
	
			
		//always set player tile to be 0
		var instances = ds_list_create();
		var n = collision_point_list(x - 16, y - 16, obj_Fog, false, true, instances, false);
		var i = 0;
		repeat ds_list_size(instances) 
		{
			instances[| i].image_index = 0;
			i++
		}
		ds_list_destroy(instances);
		
if(global.hp <= 0)
{
	//die
	room_goto (rm_main);
}
	
	
//animation
if(heal && sprite_index == spr_player && !attack && !teleport && !global.shootarrow)
{
	sprite_index = spr_playerHealth;
	image_index = 0;
}

if(heal && sprite_index == spr_playerHealth && image_index > 3)
{
	heal = false;
	sprite_index = spr_player;
	image_index = 0;
}

if(image_index > 6 && sprite_index == spr_playerShoot && global.shootarrow && teleport)
{
	sprite_index = spr_playerTeleport;
	image_index = 0;
	teleport = false;
}
if(image_index > 14 && sprite_index == spr_playerTeleport && global.shootarrow)
{
	sprite_index = spr_player;
	global.shootarrow = false;
}

if(global.shootarrow && !attack && (sprite_index == spr_player || sprite_index == spr_playerHealth))
{
	heal = false;
	sprite_index = spr_playerShoot;
	image_index = 0;
}

if(attack && (sprite_index == spr_player || sprite_index == spr_playerHealth) && !global.shootarrow)
{
	heal = false;
	sprite_index = spr_playerAttack;
	image_index = 0;
}

if(image_index > 2 && sprite_index == spr_playerAttack)
{
	sprite_index = spr_player;
}

if(image_index > 6 && sprite_index == spr_playerShoot && global.shootarrow)
{
	sprite_index = spr_player;
	global.shootarrow = false;
}

if(sprite_index == spr_player || sprite_index == spr_playerHealth)
{
	isIdle = true;
}
else
{
	isIdle = false;
}




