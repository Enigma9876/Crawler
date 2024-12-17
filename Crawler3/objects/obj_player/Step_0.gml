if(global.canMove == true)
{
	
	//press and hold feature
	if(keyboard_check(ord("W")))
	{
		if (global.gridOrg[# (x - 16 - (room_width div 4)) div 32, (y - 16 - (room_height div 4)) div 32 - 1] != 5 && (global.grid[# (x - 16 - (room_width div 4)) div 32, (y - 16 - (room_height div 4)) div 32 - 1] == 1 || global.grid[# (x - 16 - (room_width div 4)) div 32, (y - 16 - (room_height div 4)) div 32 - 1] == 0) || global.grid[# (x - 16 - (room_width div 4)) div 32, (y - 16 - (room_height div 4)) div 32 - 1] == 9 || global.grid[# (x - 16 - (room_width div 4)) div 32, (y - 16 - (room_height div 4)) div 32 - 1] == 8)
		{
			if(global.grid[# (x - 16 - (room_width div 4)) div 32, (y - 16 - (room_height div 4)) div 32 - 1] == 9)
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
			else
			{
				Move_up = true;
				firstTouch = true;
				global.gridOrg[# (x - 16 - (room_width div 4)) div 32, (y - 16 - (room_height div 4)) div 32] = 0;
				global.xdistance = 0;
				global.ydistance = -32;
			}

		}
	}
	else if(keyboard_check(ord("D")))
	{
		if (global.gridOrg[# (x - 16 - (room_width div 4)) div 32 + 1, (y - 16 - (room_height div 4)) div 32] != 5 && (global.grid[# (x - 16 - (room_width div 4)) div 32 + 1, (y - 16 - (room_height div 4)) div 32] == 1 || global.grid[# (x - 16 - (room_width div 4)) div 32 + 1, (y - 16 - (room_height div 4)) div 32] == 0) || global.grid[# (x - 16 - (room_width div 4)) div 32 + 1, (y - 16 - (room_height div 4)) div 32] == 9 || global.grid[# (x - 16 - (room_width div 4)) div 32 + 1, (y - 16 - (room_height div 4)) div 32] == 8)
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
			else
			{
				Move_right = true;
				firstTouch = true;
				global.gridOrg[# (x - 16 - (room_width div 4)) div 32, (y - 16 - (room_height div 4)) div 32] = 0;
				global.xdistance = 32;
				global.ydistance = 0;
			}
			
		}
	}
	else if(keyboard_check(ord("S")))
	{
		if (global.gridOrg[# (x - 16 - (room_width div 4)) div 32, (y - 16 - (room_height div 4)) div 32 + 1] != 5 && (global.grid[# (x - 16 - (room_width div 4)) div 32, (y - 16 - (room_height div 4)) div 32 + 1] == 1 || global.grid[# (x - 16 - (room_width div 4)) div 32, (y - 16 - (room_height div 4)) div 32 + 1] == 0) || global.grid[# (x - 16 - (room_width div 4)) div 32, (y - 16 - (room_height div 4)) div 32 + 1] == 9 || global.grid[# (x - 16 - (room_width div 4)) div 32, (y - 16 - (room_height div 4)) div 32 + 1] == 8)
		{
			if(global.grid[# (x - 16 - (room_width div 4)) div 32, (y - 16 - (room_height div 4)) div 32 + 1] == 9)
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
			else
			{
				Move_down = true;
				firstTouch = true;
				global.gridOrg[# (x - 16 - (room_width div 4)) div 32, (y - 16 - (room_height div 4)) div 32] = 0;
				global.xdistance = 0;
				global.ydistance = 32;
			}
			
		}
	}
	else if(keyboard_check(ord("A")))
	{
		if (global.gridOrg[# (x - 16 - (room_width div 4)) div 32 - 1, (y - 16 - (room_height div 4)) div 32] != 5 && (global.grid[# ((x - 16 - (room_width div 4)) div 32 - 1), ((y - 16 - (room_height div 4)) div 32)] == 1 || global.grid[# ((x - 16 - (room_width div 4)) div 32 - 1), ((y - 16 - (room_height div 4)) div 32)] == 0) || global.grid[# (x - 16 - (room_width div 4)) div 32 - 1, (y - 16 - (room_height div 4)) div 32] == 9 || global.grid[# (x - 16 - (room_width div 4)) div 32 - 1, (y - 16 - (room_height div 4)) div 32] == 8)
		{
			image_xscale = -1;
			if(global.grid[# (x - 16 - (room_width div 4)) div 32 - 1, (y - 16 - (room_height div 4)) div 32] == 9)
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
			else
			{
				Move_left = true;
				firstTouch = true;
				global.gridOrg[# (x - 16 - (room_width div 4)) div 32, (y - 16 - (room_height div 4)) div 32] = 0;
			
				global.xdistance = -32;
				global.ydistance = 0;
			}

		}
		
	}
	
	else if(keyboard_check_pressed(ord("Q")))
	{
		if(global.arrowCount > 0 && global.activeArrow == 1)
		{
			var arrow = instance_create_layer(x, y, "Instances_projectiles", obj_arrowFire);
			if(global.xdistance = -32 && global.ydistance = 0)
			{
				arrow.image_angle = 135;
				arrow.speed = -10;
			}
			else if(global.xdistance = 32 && global.ydistance = 0)
			{
				arrow.image_angle = 315;
				arrow.speed = 10;
			}
			else if(global.xdistance = 0 && global.ydistance = 32)
			{
				arrow.image_angle = 225;
				arrow.vspeed = 10;
			}
			else if(global.xdistance = 0 && global.ydistance = -32)
			{
				arrow.image_angle = 45;
				arrow.vspeed = -10;
			}
			else
			{
				//default to right if problem
				arrow.image_angle = 315;
				arrow.speed = 10;
			}
			
			
			//delete arrow from amount
			global.turn++;
			global.arrowCount--;
		}
		else if(global.arrowCount2 > 0 && global.activeArrow == 2)
		{
			global.gridOrg[# (x - 16 - (room_width div 4)) div 32, (y - 16 - (room_height div 4)) div 32] = 0;
			var possibleSpawns = array_create(0);
			
			for(var h = 0; h < ds_grid_height(global.grid); h++)
			{
				for(var w = 0; w < ds_grid_width(global.grid); w++)
				{
			
					//add possible spawn
					if(global.grid[# w,h] == 0 && global.gridOrg[# w,h] != 5 && global.gridOrg[# w,h] != 2 && w != ds_grid_width(global.grid) - 1 && w != ds_grid_width(global.grid) - 2 && h != ds_grid_height(global.grid) - 1 && h != ds_grid_height(global.grid) - 2)
					{
						array_push(possibleSpawns, string(w) + " " + string(h));
					}
			
				}
			}
			var indexofPlayer = irandom_range(0, array_length(possibleSpawns) - 1)
	
			var wPos = string_copy(string(array_get(possibleSpawns, indexofPlayer)), 1, string_last_pos(" ", string(array_get(possibleSpawns, indexofPlayer))) - 1);
			var hPos = string_copy(string(array_get(possibleSpawns, indexofPlayer)),  string_last_pos(" ", string(array_get(possibleSpawns, indexofPlayer))) + 1, string_length(string(array_get(possibleSpawns, indexofPlayer))));
	
			obj_player.x = (real(wPos) * 32) + (room_width div 4) + 16
			obj_player.y = (real(hPos) * 32) + (room_height div 4) + 16;
			global.gridOrg[# wPos,hPos] = 4;
			
			
			//delete arrow from amount
			global.turn++;
			global.arrowCount2--;
			change_fog();
		}
		else if(global.arrowCount3 > 0 && global.activeArrow == 3)
		{
			var arrow1 = instance_create_layer(x, y, "Instances_projectiles", obj_arrow3Fire);
			var arrow2 = instance_create_layer(x, y, "Instances_projectiles", obj_arrow3Fire);
			var arrow3 = instance_create_layer(x, y, "Instances_projectiles", obj_arrow3Fire);
			var arrow4 = instance_create_layer(x, y, "Instances_projectiles", obj_arrow3Fire);
			var arrow5 = instance_create_layer(x, y, "Instances_projectiles", obj_arrow3Fire);
			var arrow6 = instance_create_layer(x, y, "Instances_projectiles", obj_arrow3Fire);
			var arrow7 = instance_create_layer(x, y, "Instances_projectiles", obj_arrow3Fire);
			var arrow8 = instance_create_layer(x, y, "Instances_projectiles", obj_arrow3Fire);
			arrow1.image_angle = 135;
			arrow1.speed = -5;
			arrow2.image_angle = 315;
			arrow2.speed = 5;
			arrow3.image_angle = 225;
			arrow3.vspeed = 5;
			arrow4.image_angle = 45;
			arrow4.vspeed = -5;
			arrow5.image_angle = 90;
			arrow5.speed = -4;
			arrow5.vspeed = -3;
			arrow6.image_angle = 180;
			arrow6.speed = -4;
			arrow6.vspeed = 3;
			arrow7.image_angle = 270;
			arrow7.speed = 4;
			arrow7.vspeed = 3;
			arrow8.image_angle = 360;
			arrow8.speed = 4;
			arrow8.vspeed = -3;
			
			//delete arrow from amount
			global.turn++;
			global.arrowCount3--;
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
			global.gridOrg[# (x - 16 - (room_width div 4)) div 32, (y - 16 - (room_height div 4)) div 32] = 4;
			change_fog();
			global.turn += 1;

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
			global.gridOrg[# (x - 16 - (room_width div 4)) div 32, (y - 16 - (room_height div 4)) div 32] = 4;
			change_fog();
			global.turn += 1;
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
			global.gridOrg[# (x - 16 - (room_width div 4)) div 32, (y - 16 - (room_height div 4)) div 32] = 4;
			change_fog();
			global.turn += 1;
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
			global.gridOrg[# (x - 16 - (room_width div 4)) div 32, (y - 16 - (room_height div 4)) div 32] = 4;
			change_fog();
			global.turn += 1;
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

	if(keyboard_check_pressed(ord("E")))
	{
		global.activeArrow++;
		if(global.activeArrow > 3)
		{
			global.activeArrow = 1;
		}
	}




