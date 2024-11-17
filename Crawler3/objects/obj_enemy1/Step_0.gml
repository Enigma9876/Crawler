if(global.turn != last_turn_num)
{
   //list to store the found path
   var path = find_path((x - (room_width div 4)) div 64, (y - (room_height div 4)) div 64, (obj_player.x - (room_width div 4)) div 64, (obj_player.y - (room_height div 4)) div 64);
   //get the movement out of the list
   if(path != undefined)
   {
	   var position = path[1];
	   var move_x = string_copy(position, 1, string_last_pos("_", position) - 1);
	   var move_y = string_copy(position,  string_last_pos("_", position) + 1, string_length(position));

   		//move toward player
	   if(move_x == (x - (room_width div 4)) div 64)
	   {
		   if(move_y < (y - (room_height div 4)) div 64)
		   {
			   y -= distance;
		   }
		   else if(move_y > (y - (room_height div 4)) div 64)
		   {
			   y += distance;
		   }
	   }
	   else if(move_y == (y - (room_height div 4)) div 64)
	   {
		   if(move_x > (x - (room_width div 4)) div 64)
		   {
			   x += distance;
		   }
		   else if(move_x < (x - (room_width div 4)) div 64)
		   {
			   x -= distance;
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
