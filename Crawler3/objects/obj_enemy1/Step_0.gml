if(global.turn != last_turn_num)
{
   //list to store the found path
   var path = find_path(x div 64, y div 64, obj_player.x div 64, obj_player.y div 64);
   
   //get the movement out of the list
   var position = path[0];
   var move_x = string_copy(position, 0, 1);
   var move_y = string_copy(position, string_char_at(position, "_"), string_length(position));
   show_debug_message(string(move_x) + " " + string(move_y));
   
}

//updates grid
if(xprevious != x || yprevious != y)
{
	global.grid[# xprevious div 64, yprevious div 64] = 0;
	global.grid[# x div 64, y div 64] = 1;
}
last_turn_num = global.turn;
