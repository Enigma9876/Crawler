if(global.turn != last_turn_num)
{
	
	//find path
	var foundpath = false;
	
	//paths
	var path_x = ds_list_create();
	var path_y = ds_list_create();
	
	while(!foundpath)
	{
		//need to check to see if the grids i'm checking are not out of bounds before i check them
		var free_x = (x div 64);
		if (global.grid_contents[(y div 64)][free_x] == "null" &&  x < obj_player.x)
		{
			ds_list_add(path_x,1);
		}
		else if(global.grid_contents[y div 64][free_x] == "null" &&  x > obj_player.x)
		{
			ds_list_add(path_x,-1);
		}
		else if(x == obj_player.x)
		{
			foundpath = true;
		}
		else
		{
			foundpath = true;
		}

		if(ds_list_size(path_x) > 0)
		{
			foundpath = true;
		}
	}
	
	for(var i = 0; i < ds_list_size(path_x); i++)
	{
		x += ds_list_find_value(path_x, 0) * 64;
	}
	
}

last_turn_num = global.turn;
