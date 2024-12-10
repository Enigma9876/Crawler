if(global.canMove == true)
{
	
	//press and hold feature
	if(keyboard_check(ord("W")))
	{
		if (global.gridOrg[# (x - 16 - (room_width div 4)) div 32, (y - 16 - (room_height div 4)) div 32 - 1] != 5 && (global.grid[# (x - 16 - (room_width div 4)) div 32, (y - 16 - (room_height div 4)) div 32 - 1] == 1 || global.grid[# (x - 16 - (room_width div 4)) div 32, (y - 16 - (room_height div 4)) div 32 - 1] == 0))
		{
			Move_up = true;
			global.canMove = false;
			firstTouch = true;
			global.gridOrg[# (x - 16 - (room_width div 4)) div 32, (y - 16 - (room_height div 4)) div 32] = 0;
			global.xdistance = 0;
			global.ydistance = -32;

		}
	}
	else if(keyboard_check(ord("D")))
	{
		if (global.gridOrg[# (x - 16 - (room_width div 4)) div 32 + 1, (y - 16 - (room_height div 4)) div 32] != 5 && (global.grid[# (x - 16 - (room_width div 4)) div 32 + 1, (y - 16 - (room_height div 4)) div 32] == 1 || global.grid[# (x - 16 - (room_width div 4)) div 32 + 1, (y - 16 - (room_height div 4)) div 32] == 0))
		{
			Move_right = true;
			global.canMove = false;
			firstTouch = true;
			global.gridOrg[# (x - 16 - (room_width div 4)) div 32, (y - 16 - (room_height div 4)) div 32] = 0;
			global.xdistance = 32;
			global.ydistance = 0;
			
		}
	}
	else if(keyboard_check(ord("S")))
	{
		if (global.gridOrg[# (x - 16 - (room_width div 4)) div 32, (y - 16 - (room_height div 4)) div 32 + 1] != 5 && (global.grid[# (x - 16 - (room_width div 4)) div 32, (y - 16 - (room_height div 4)) div 32 + 1] == 1 || global.grid[# (x - 16 - (room_width div 4)) div 32, (y - 16 - (room_height div 4)) div 32 + 1] == 0))
		{
			Move_down = true;
			global.canMove = false;
			firstTouch = true;
			global.gridOrg[# (x - 16 - (room_width div 4)) div 32, (y - 16 - (room_height div 4)) div 32] = 0;
			global.xdistance = 0;
			global.ydistance = 32;
			
		}
	}
	else if(keyboard_check(ord("A")))
	{
		if (global.gridOrg[# (x - 16 - (room_width div 4)) div 32 - 1, (y - 16 - (room_height div 4)) div 32] != 5 && (global.grid[# ((x - 16 - (room_width div 4)) div 32 - 1), ((y - 16 - (room_height div 4)) div 32)] == 1 || global.grid[# ((x - 16 - (room_width div 4)) div 32 - 1), ((y - 16 - (room_height div 4)) div 32)] == 0))
		{
			Move_left = true;
			global.canMove = false;
			firstTouch = true;
			global.gridOrg[# (x - 16 - (room_width div 4)) div 32, (y - 16 - (room_height div 4)) div 32] = 0;
			
			global.xdistance = -32;
			global.ydistance = 0;

		}
		
	}
	
	if(keyboard_check_pressed(ord("Q")))
	{
		if(global.arrowCount > 0)
		{
			var arrow = instance_create_layer(x, y, "Instances_projectiles", obj_arrowFire);
			if(global.xdistance = -32 && global.ydistance = 0)
			{
				arrow.image_angle = 135;
				arrow.speed = -5;
			}
			else if(global.xdistance = 32 && global.ydistance = 0)
			{
				arrow.image_angle = 315;
				arrow.speed = 5;
			}
			else if(global.xdistance = 0 && global.ydistance = 32)
			{
				arrow.image_angle = 225;
				arrow.vspeed = 5;
			}
			else if(global.xdistance = 0 && global.ydistance = -32)
			{
				arrow.image_angle = 45;
				arrow.vspeed = -5;
			}
			else
			{
				//default to right if problem
				arrow.image_angle = 315;
				arrow.speed = 5;
			}
			
			
			//delete arrow from amount
			global.turn++;
			global.arrowCount--;
		}
	}
	
	
	
	
}
else if(global.canMove == false && !inalarm)
{
	alarm[0] = 10;
	inalarm = true;
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
		    left_move_progress++;
		    var _progress_factor = left_move_progress / left_move_target;
		    obj_player.x = round(lerp(left_start_x, left_end_x, _progress_factor));
		    obj_player.y = round(lerp(left_start_y, left_end_y, _progress_factor));
		}
		else
		{
			Move_left = false;
			left_values = true;
			left_move_progress = 0;
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
		    right_move_progress++;
		    var _progress_factor = right_move_progress / right_move_target;
		    obj_player.x = round(lerp(right_start_x, right_end_x, _progress_factor));
		    obj_player.y = round(lerp(right_start_y, right_end_y, _progress_factor));
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
		    up_move_progress++;
		    var _progress_factor = up_move_progress / up_move_target;
		    obj_player.x = round(lerp(up_start_x, up_end_x, _progress_factor));
		    obj_player.y = round(lerp(up_start_y, up_end_y, _progress_factor));
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
		    down_move_progress++;
		    var _progress_factor = down_move_progress / down_move_target;
		    obj_player.x = round(lerp(down_start_x, down_end_x, _progress_factor));
		    obj_player.y = round(lerp(down_start_y, down_end_y, _progress_factor));
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
	
	room_goto (rm_startingRoom);
}
					




