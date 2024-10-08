var pos_in_list_x = x;
var pos_in_list_y = y;
if(global.turn != last_turn_num)
{
	//find path
	var foundpath = false;
	
	//paths
	var path_x = ds_list_create();
	var path_y = ds_list_create();
	
	var current_x = x div 64;
	var current_y = y div 64;
	
	//actual path finding
	while(!foundpath)
	{
		//x value
		if (global.grid_contents[current_y][current_x + 1] == "null" &&  current_x < (obj_player.x div 64))
		{
			ds_list_add(path_x,1);
			current_x = current_x + 1;
		}
		else if(global.grid_contents[current_y][current_x - 1] == "null" &&  current_x > (obj_player.x div 64))
		{
			ds_list_add(path_x,-1);
			current_x = current_x - 1;
		}
		else if(current_x == (obj_player.x div 64))
		{
			ds_list_add(path_x,0);
			foundpath = true;
		}
		else
		{
			foundpath = true;
		}
		

	}
	
	if(ds_list_size(path_x) != 0)
		x += ds_list_find_value(path_x, 0) * 64;

	
}

//updates grid
if(xprevious != x || yprevious != y)
{
	array_set(global.grid_contents[yprevious div 64], xprevious div 64, "null"); 
	array_set(global.grid_contents[y div 64], x div 64, "enemy");
}
last_turn_num = global.turn;
