if(global.turn != last_turn_num)
{
   //list to store the found path
   var path = find_path(x div 64, y div 64, obj_player.x div 64, obj_player.y div 64);
   //get the movement out of the list
   var position = path[1];
   var move_x = string_copy(position, 1, string_last_pos("_", position) - 1);
   var move_y = string_copy(position,  string_last_pos("_", position) + 1, string_length(position));
   
   
   	//attack player
	if(move_x == obj_player.x div 64 && move_y == obj_player.y div 64)
	{
		show_debug_message("attacked player");
	}
   else //move toward player
   {
	   if(move_x == x div 64)
	   {
		   if(move_y < y div 64)
		   {
			   y -= distance;
		   }
		   else if(move_y > y div 64)
		   {
			   y += distance;
		   }
	   }
	   else if(move_y == y div 64)
	   {
		   if(move_x > x div 64)
		   {
			   x += distance;
		   }
		   else if(move_x < x div 64)
		   {
			   x -= distance;
		   }
	   }
   }
   
}

//updates grid
if(xprevious != x || yprevious != y)
{
	global.grid[# xprevious div 64, yprevious div 64] = 0;
	global.grid[# x div 64, y div 64] = 1;
}
last_turn_num = global.turn;
