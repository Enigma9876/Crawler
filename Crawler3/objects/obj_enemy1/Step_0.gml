if(global.turn != last_turn_num)
{
   //list to store the found path
   var path = find_path((x - (room_width div 4)) div 64, (y - (room_height div 4)) div 64, (obj_player.x - (room_width div 4)) div 64, (obj_player.y - (room_height div 4)) div 64);
   //get the movement out of the list
   if(path != undefined)
   {
	   var pathArray = array_create(path);
	   show_debug_message(array_length(pathArray));
	   
	   
	   var position = path[1];
	   var move_x = string_copy(position, 1, string_last_pos("_", position) - 1);
	   var move_y = string_copy(position,  string_last_pos("_", position) + 1, string_length(position));

   		//move toward player
	   if(move_x == (x - (room_width div 4)) div 64)
	   {
		   if(move_y < (y - (room_height div 4)) div 64)
		   {
			   Move_up = true;
		   }
		   else if(move_y > (y - (room_height div 4)) div 64)
		   {
			   Move_down = true;
		   }
	   }
	   else if(move_y == (y - (room_height div 4)) div 64)
	   {
		   if(move_x > (x - (room_width div 4)) div 64)
		   {
			   Move_right = true;
		   }
		   else if(move_x < (x - (room_width div 4)) div 64)
		   {
			   Move_left = true;
		   }
	   }
   }
   
}

//updates grid
if(xprevious != x || yprevious != y)
{
	global.grid[# (xprevious - (room_width div 4)) div 64, (yprevious - (room_height div 4)) div 64] = 0;
	global.grid[# (x - (room_width div 4)) div 64, (y - (room_height div 4)) div 64] = 1;
}
last_turn_num = global.turn;

if(Move_left)
{
	if(left_values)
	{
		left_start_x = x;
		left_end_x = x - 64;
		left_start_y = y;
		left_end_y = y;
	}
	left_values = false;
	if (left_move_progress < left_move_target)
	{
	    left_move_progress++;
	    var _progress_factor = left_move_progress / left_move_target;
	    x = round(lerp(left_start_x, left_end_x, _progress_factor));
	    y = round(lerp(left_start_y, left_end_y, _progress_factor));
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
		right_end_x = x + 64;
		right_start_y = y;
		right_end_y = y;
	}
	right_values = false;
	if (right_move_progress < right_move_target)
	{
	    right_move_progress++;
	    var _progress_factor = right_move_progress / right_move_target;
	    x = round(lerp(right_start_x, right_end_x, _progress_factor));
	    y = round(lerp(right_start_y, right_end_y, _progress_factor));
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
		up_end_y = y - 64;
	}
	up_values = false;
	if (up_move_progress < up_move_target)
	{
	    up_move_progress++;
	    var _progress_factor = up_move_progress / up_move_target;
	    x = round(lerp(up_start_x, up_end_x, _progress_factor));
	    y = round(lerp(up_start_y, up_end_y, _progress_factor));
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
		down_end_y = y + 64;
	}
	down_values = false;
	if (down_move_progress < down_move_target)
	{
	    down_move_progress++;
	    var _progress_factor = down_move_progress / down_move_target;
	    x = round(lerp(down_start_x, down_end_x, _progress_factor));
	    y = round(lerp(down_start_y, down_end_y, _progress_factor));
	}
	else
	{
		Move_down = false;
		down_values = true;
		
		 down_move_progress = 0;
	}
}
