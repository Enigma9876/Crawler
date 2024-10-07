var pos_in_list_x = x;
var pos_in_list_y = y;
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
		if (global.grid_contents[(y div 64)][free_x + 1] == "null" &&  x < obj_player.x)
		{
			ds_list_add(path_x,1);
		}
		else if(global.grid_contents[(y div 64)][free_x - 1] == "null" &&  x > obj_player.x)
		{
			ds_list_add(path_x,-1);
		}
		else if(x == obj_player.x) //temporary until y is working
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
if(xprevious != x || yprevious != y)
{
	array_set(global.grid_contents[yprevious div 64], xprevious div 64, "null"); 
	array_set(global.grid_contents[y div 64], x div 64, "enemy");
}
last_turn_num = global.turn;
