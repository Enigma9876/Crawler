function create_rooms(width, height)
{
	//create list of rooms
	var rooms = array_create(width, array_create(height, ds_type_grid));
	
	//set size of grids
	for(var i = 0; i < array_length(rooms); i++)
	{
		for(var j = 0; j < array_length(rooms[0]); j++)
		{
			rooms[i][j] = ds_grid_create(global.grid_width / array_length(rooms), global.grid_height / array_length(rooms[0]))
		}
	}
	
	for(var i = 0; i < array_length(rooms); i++)
	{
		for(var j = 0; j < array_length(rooms[0]); j++)
		{
			for (var w = (ds_grid_width(rooms[i][j]) * j); w < (ds_grid_width(rooms[i][j]) * j) + ds_grid_width(rooms[i][j]); w++) 
			{
			    for (var h = (ds_grid_height(rooms[i][j]) * i); h < (ds_grid_height(rooms[i][j]) * i) + ds_grid_height(rooms[i][j]); h++) 
				{
					if((w == (ds_grid_width(rooms[i][j]) * j) || w == (ds_grid_width(rooms[i][j]) * j) + ds_grid_width(rooms[i][j]) + 1) || (h == (ds_grid_height(rooms[i][j]) * i) || h == (ds_grid_height(rooms[i][j]) * i) + ds_grid_height(rooms[i][j])))
					{
						global.grid[# w, h] = 1; // set non-walkable
						instance_create_layer(w * 64, h * 64, "Instances_Objects", obj_wall); //add wall
					}
					if(w == global.grid_width - 1 || h == global.grid_height - 1)
					{
						global.grid[# w, h] = 1; // set non-walkable
						instance_create_layer(w * 64, h * 64, "Instances_Objects", obj_wall); //add wall
					}
			    }
			}
		}
	}
}