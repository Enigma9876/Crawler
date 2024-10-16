if(global.turn != last_turn_num)
{
   //list to sotre the found path
   show_debug_message(find_path(x div 64, y div 64, obj_player.x div 64, obj_player.y div 64));
}

//updates grid
if(xprevious != x || yprevious != y)
{
	global.grid[# xprevious div 64, yprevious div 64] = 0;
	global.grid[# x div 64, y div 64] = 1;
}
last_turn_num = global.turn;
