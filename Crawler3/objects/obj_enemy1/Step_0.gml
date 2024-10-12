var pos_in_list_x = x;
var pos_in_list_y = y;
if(global.turn != last_turn_num)
{
	//find path
	var foundpath_y = false;
	var foundpath_x = false;
	
	//paths
	var path_x = ds_list_create();
	var path_y = ds_list_create();
	
	var current_x = x div 64;
	var current_y = y div 64;
	
	//path finding
	while(!foundpath_y)
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
			foundpath_x = true;
		}
		else
		{
			foundpath_x = true;
		}
		
		//y value
		if(foundpath_x)
		{
			if (global.grid_contents[current_y + 1][current_x] == "null" &&  current_y < (obj_player.y div 64))
			{
				ds_list_add(path_y,1);
				current_y = current_y + 1;
			}
			else if(global.grid_contents[current_y - 1][current_x] == "null" &&  current_y > (obj_player.y div 64))
			{
				ds_list_add(path_y,-1);
				current_y = current_y - 1;
			}
			else if(current_y == (obj_player.y div 64))
			{
				ds_list_add(path_y,0);
				foundpath_y = true;
			}
			else
			{
				foundpath_y = true;
			}
		}
		

	}
	if(ds_list_size(path_x) != 0 && ds_list_find_value(path_x, 0) != 0)
		x += ds_list_find_value(path_x, 0) * 64;
	else
		y += ds_list_find_value(path_y, 0) * 64;

	
}

//updates grid
if(xprevious != x || yprevious != y)
{
	array_set(global.grid_contents[yprevious div 64], xprevious div 64, "null"); 
	array_set(global.grid_contents[y div 64], x div 64, "enemy");
}
last_turn_num = global.turn;
