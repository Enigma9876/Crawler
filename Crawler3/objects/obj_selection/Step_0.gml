//x = obj_player.x + global.xdistance;
//y = obj_player.y + global.ydistance;
x = mouse_x - (mouse_x % 32) + 12;
y = mouse_y - (mouse_y % 32) + 12;

if (place_meeting(x, y, obj_Fog))
{
	var fog = instance_place(x, y, obj_Fog);
	if(fog.image_index == 0 || fog.image_index == 1 || fog.image_index == 2)
	{
		visible = true;
	}
	else
	{
		visible = false;
	}
}
else
{
	visible = false;
}

if(!global.shootarrow)
{
	if(keyboard_check(ord("A")) || keyboard_check_pressed(vk_left))
	{
		obj_player.image_xscale = -1;
		global.xdistance = -32;
		global.ydistance = 0;
	}
	else if(keyboard_check(ord("D")) || keyboard_check_pressed(vk_right))
	{
		obj_player.image_xscale = 1;
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
}
	
	var w = ((x - (room_width div 4)) div 32);
	var h = ((y - (room_height div 4)) div 32);
	if(global.gridOrg[# w, h] != 5 && mouse_check_button_pressed(mb_left) && !global.shootarrow && (global.gridPow[# w,h] == 6 || global.gridPow[# w,h] == 7 || global.gridPow[# w,h] == 12 || global.gridPow[# w,h] == 2))
	{
		var add = true;
		var instances = ds_list_create();
					var usedInstances = ds_list_create();
					for(var h2 = 16; h2 >= -16; h2--)
					{
						for(var w2 = 16; w2 >= -16; w2--)
						{
							var n = collision_point_list(x + w2, y + h2, obj_arrow, false, true, instances, false);
							var n = collision_point_list(x + w2, y + h2, obj_arrow2, false, true, instances, false);
							var n = collision_point_list(x + w2, y + h2, obj_arrow3, false, true, instances, false);
							var n = collision_point_list(x + w2, y + h2, obj_potion2, false, true, instances, false);
							var n = collision_point_list(x + w2, y + h2, obj_potion1, false, true, instances, false);
							var n = collision_point_list(x + w2, y + h2, obj_key, false, true, instances, false);
						}
					}
						var i = 0;
						var otherItem = false;
						repeat ds_list_size(instances)
						{
							if(add)
							{
								if(object_get_name(instances[| i].object_index) == "obj_arrow")
								{
									var text = instance_create_layer(obj_player.x, obj_player.y, "Instances_Global", obj_ItemPickup);
									text.objectToFollow = obj_player;
									text.text = "+1 arrow";
									text.rarity = "common";
									global.arrowCount ++;
								}
								if(object_get_name(instances[| i].object_index) == "obj_arrow2")
								{
									var text = instance_create_layer(obj_player.x, obj_player.y, "Instances_Global", obj_ItemPickup);
									text.objectToFollow = obj_player;
									text.text = "+1 multi arrow";
									text.rarity = "epic";
									global.arrowCount2 ++;
								}
								if(object_get_name(instances[| i].object_index) == "obj_arrow3")
								{
									var text = instance_create_layer(obj_player.x, obj_player.y, "Instances_Global", obj_ItemPickup);
									text.objectToFollow = obj_player;
									text.text = "+1 teleprot arrow";
									text.rarity = "epic";
									global.arrowCount3 ++;
								}
								if(object_get_name(instances[| i].object_index) == "obj_key")
								{
									var text = instance_create_layer(obj_player.x, obj_player.y, "Instances_Global", obj_ItemPickup);
									text.objectToFollow = obj_player;
									text.text = "+1 golden key";
									text.rarity = "ledgendary";
									global.keyCount ++;
								}
								if(object_get_name(instances[| i].object_index) == "obj_potion2")
								{
									var text = instance_create_layer(obj_player.x, obj_player.y, "Instances_Global", obj_ItemPickup);
									text.objectToFollow = obj_player;
									text.text = "+1 small potion";
									text.rarity = "common";
									global.potionCount2 ++;
								}
								if(object_get_name(instances[| i].object_index) == "obj_potion1")
								{
									var text = instance_create_layer(obj_player.x, obj_player.y, "Instances_Global", obj_ItemPickup);
									text.objectToFollow = obj_player;
									text.text = "+1 potion";
									text.rarity = "epic";
									global.potionCount1 ++;
								}
									
								ds_list_add(usedInstances, instances[| i]);
								instance_destroy(instances[| i]);
								add = false;
							}
							
							for(var j = 0; j < ds_list_size(usedInstances); j++)
							{
								if(usedInstances[| j] != instances[| i])
								{
									otherItem = true;
								}
							}
							i++
						}	
						ds_list_destroy(instances);
						ds_list_destroy(usedInstances);
						
						if(otherItem)
							global.gridPow[# w,h] = 6;
						else
							global.gridPow[# w,h] = 0;
					
						//global.turn += 1;
						//obj_player.xprevious = 0;
	}
	
	
	if(global.canMove && !global.shootarrow)
	{
		var w = ((x - (room_width div 4)) div 32);
		var h = ((y - (room_height div 4)) div 32);
		if(mouse_check_button_pressed(mb_left))
		{
			var left = global.grid[# w - 1,h];
			var right = global.grid[# w + 1,h];
			var up = global.grid[# w,h - 1];
			var down = global.grid[# w,h + 1];
			if(global.gridOrg[# w, h] == 5) //enemy
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
						instances[| i].xprevious = 0;
						obj_player.attack = true;
						obj_player.attackx = w;
						obj_player.attacky = h;
						i++
					}
					ds_list_destroy(instances);
					global.turn += 1;
				}
			}
			else if(global.grid[# w, h] == -1 && !(global.gridPow[# w,h] == 6 || global.gridPow[# w,h] == 7 || global.gridPow[# w,h] == 12 || global.gridPow[# w,h] == 2))
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
					var door = instance_create_layer((w * 32) + (room_width div 4), (h * 32) + (room_height div 4), "Instances_WallandFloor", obj_doorclose1);
					door.xprevious = 0;
				}
				else if((left == 0 || left == 4) && (right == -1 || right == 0 || right == 4) && (up == -2 || up == 4) && (down == -2 || down == 4))
				{ 
						var door = instance_create_layer((w * 32) + (room_width div 4), (h * 32) + (room_height div 4), "Instances_WallandFloor", obj_doorclose2);
						door.xprevious = 0;
				}
				global.turn += 1;
				//update if any changes
				change_fog();
			
			}
			else if(global.grid[# w, h] == 1 && !(global.gridPow[# w,h] == 6 || global.gridPow[# w,h] == 7 || global.gridPow[# w,h] == 12 || global.gridPow[# w,h] == 2))
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
			
			
			//walk into ladder
			/*if(global.grid[# w,h] == 9)
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
				
			} */
			
			if(global.grid[# w,h] == 3)
			{
				global.grid[# w,h] = 0;
				var instances = ds_list_create();
				var n = collision_point_list(x, y, obj_box1, false, true, instances, false);
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
			}
			//chest
			if(global.grid[# w,h] == 14 && global.keyCount > 0)
			{
				global.grid[# w,h] = 0;
				var instances = ds_list_create();
				var n = collision_point_list(x, y, obj_chest1, false, true, instances, false);
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
			}
			else if(global.grid[# w,h] == 14 && global.keyCount == 0)
			{
				var instances = ds_list_create();
				var n = collision_point_list(x, y, obj_chest1, false, true, instances, false);
				var i = 0;
				repeat ds_list_size(instances) 
				{
					var text = instance_create_layer(instances[| i].x - 48, instances[| i].y, "Instances_Global", obj_ItemPickup);
					text.objectToFollow = instances[| i];
					text.text = "need gold key";
					i++
				}
				ds_list_destroy(instances);
			}
			
		}
	}
