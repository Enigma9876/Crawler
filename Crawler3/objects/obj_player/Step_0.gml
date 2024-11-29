if(canMove == true)
{
	//movement
	if(keyboard_check_pressed(vk_left))
	{
		if (global.grid[# ((x - (room_width div 4)) div 32 - 1), ((y - (room_height div 4)) div 32)] == 0)
		{
			Move_left = true;
			canMove = false;
			firstTouch = true;
			if((x - (room_width div 4)) != xprevious2 - (room_width div 4) || (y - (room_height div 4)) != yprevious2 - (room_height div 4))
			{
				global.grid[# (xprevious2 - (room_width div 4)) div 32 div 32, (yprevious2 - (room_height div 4)) div 32] = 0;
				global.grid[# (x - (room_width div 4)) div 32 div 32, (y - (room_height div 4)) div 32] = 1;
			}
			global.turn += 1;
		}
	}
	else if(keyboard_check_pressed(vk_right))
	{
		if (global.grid[# (x - (room_width div 4)) div 32 + 1, (y - (room_height div 4)) div 32] == 0)
		{
			Move_right = true;
			canMove = false;
			firstTouch = true;
			if((x - (room_width div 4)) != xprevious2 - (room_width div 4) || (y - (room_height div 4)) != yprevious2 - (room_height div 4))
			{
				global.grid[# (xprevious2 - (room_width div 4)) div 32 div 32, (yprevious2 - (room_height div 4)) div 32] = 0;
				global.grid[# (x - (room_width div 4)) div 32 div 32, (y - (room_height div 4)) div 32] = 1;
			}
			global.turn += 1;
		}
	}
	else if(keyboard_check_pressed(vk_down))
	{
		if (global.grid[# (x - (room_width div 4)) div 32, (y - (room_height div 4)) div 32 + 1] == 0)
		{
			Move_down = true;
			canMove = false;
			firstTouch = true;
			if((x - (room_width div 4)) != xprevious2 - (room_width div 4) || (y - (room_height div 4)) != yprevious2 - (room_height div 4))
			{
				global.grid[# (xprevious2 - (room_width div 4)) div 32 div 32, (yprevious2 - (room_height div 4)) div 32] = 0;
				global.grid[# (x - (room_width div 4)) div 32 div 32, (y - (room_height div 4)) div 32] = 1;
			}
			global.turn += 1;
		}
	}
	else if(keyboard_check_pressed(vk_up))
	{
		if (global.grid[# (x - (room_width div 4)) div 32, (y - (room_height div 4)) div 32 - 1] == 0)
		{
			Move_up = true;
			canMove = false;
			firstTouch = true;
			if((x - (room_width div 4)) != xprevious2 - (room_width div 4) || (y - (room_height div 4)) != yprevious2 - (room_height div 4))
			{
				global.grid[# (xprevious2 - (room_width div 4)) div 32 div 32, (yprevious2 - (room_height div 4)) div 32] = 0;
				global.grid[# (x - (room_width div 4)) div 32 div 32, (y - (room_height div 4)) div 32] = 1;
			}
			global.turn += 1;
		}
	}
	
	//press and hold feature
	if(keyboard_check(vk_left))
	{
		if (global.grid[# ((x - (room_width div 4)) div 32 - 1), ((y - (room_height div 4)) div 32)] == 0)
		{
			Move_left = true;
			canMove = false;
			firstTouch = true;
			if((x - (room_width div 4)) != xprevious2 - (room_width div 4) || (y - (room_height div 4)) != yprevious2 - (room_height div 4))
			{
				global.grid[# (xprevious2 - (room_width div 4)) div 32 div 32, (yprevious2 - (room_height div 4)) div 32] = 0;
				global.grid[# (x - (room_width div 4)) div 32 div 32, (y - (room_height div 4)) div 32] = 1;
			}
			global.turn += 1;
		}
	}
	else if(keyboard_check(vk_right))
	{
		if (global.grid[# (x - (room_width div 4)) div 32 + 1, (y - (room_height div 4)) div 32] == 0)
		{
			Move_right = true;
			canMove = false;
			firstTouch = true;
			if((x - (room_width div 4)) != xprevious2 - (room_width div 4) || (y - (room_height div 4)) != yprevious2 - (room_height div 4))
			{
				global.grid[# (xprevious2 - (room_width div 4)) div 32 div 32, (yprevious2 - (room_height div 4)) div 32] = 0;
				global.grid[# (x - (room_width div 4)) div 32 div 32, (y - (room_height div 4)) div 32] = 1;
			}
			global.turn += 1;
		}
	}
	else if(keyboard_check(vk_down))
	{
		if (global.grid[# (x - (room_width div 4)) div 32, (y - (room_height div 4)) div 32 + 1] == 0)
		{
			Move_down = true;
			canMove = false;
			firstTouch = true;
			if((x - (room_width div 4)) != xprevious2 - (room_width div 4) || (y - (room_height div 4)) != yprevious2 - (room_height div 4))
			{
				global.grid[# (xprevious2 - (room_width div 4)) div 32 div 32, (yprevious2 - (room_height div 4)) div 32] = 0;
				global.grid[# (x - (room_width div 4)) div 32 div 32, (y - (room_height div 4)) div 32] = 1;
			}
			global.turn += 1;
		}
	}
	else if(keyboard_check(vk_up))
	{
		if (global.grid[# (x - (room_width div 4)) div 32, (y - (room_height div 4)) div 32 - 1] == 0)
		{
			Move_up = true;
			canMove = false;
			firstTouch = true;
			if((x - (room_width div 4)) != xprevious2 - (room_width div 4) || (y - (room_height div 4)) != yprevious2 - (room_height div 4))
			{
				global.grid[# (xprevious2 - (room_width div 4)) div 32 div 32, (yprevious2 - (room_height div 4)) div 32] = 0;
				global.grid[# (x - (room_width div 4)) div 32 div 32, (y - (room_height div 4)) div 32] = 1;
			}
			global.turn += 1;
		}
	}
	
	
	
	
	

	if(x != xprevious2 || y != yprevious2)
	{
		xprevious2 = x;
		yprevious2 = y;
	}


}
else if(canMove == false && !inalarm)
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
		}
	}




