function create_rooms(width, height)
{
	//create list of rooms
	var rooms = array_create(width, array_create(height, ds_type_grid));
	
	//set size of grids
	for(var i = 0; i < array_length(rooms); i++)
	{
		for(var j = 0; j < array_length(rooms[0]); j++)
		{
			rooms[i][j] = ds_grid_create(global.grid_width div array_length(rooms), global.grid_height div array_length(rooms[0]) - 1)
		}
	}



	ds_grid_resize(global.grid, ds_grid_width(global.grid) + 1, ds_grid_height(global.grid) + 1); //resize grid




	//rooms
	for(var i = 0; i < array_length(rooms); i++) //width
	{
		for(var j = 0; j < array_length(rooms[0]); j++) //height
		{
			//set door variable
			var hasdoor = false;
			
			for (var w = (ds_grid_width(rooms[i][j]) * j); w < (ds_grid_width(rooms[i][j]) * j) + ds_grid_width(rooms[i][j]) + 1; w++) 
			{
			    for (var h = (ds_grid_height(rooms[i][j]) * i); h < (ds_grid_height(rooms[i][j]) * i) + ds_grid_height(rooms[i][j]) + 1; h++) 
				{
					if((w == (ds_grid_width(rooms[i][j]) * j) || w == (ds_grid_width(rooms[i][j]) * j) + ds_grid_width(rooms[i][j]) + 1) || (h == (ds_grid_height(rooms[i][j]) * i) || h == (ds_grid_height(rooms[i][j]) * i) + ds_grid_height(rooms[i][j])))
					{
							global.grid[# w, h] = 1; // set non-walkable
							instance_create_layer((w * 32) + (room_width div 4), (h * 32) + (room_height div 4), "Instances_Objects", obj_wall); //add wall
					}
					if(w == global.grid_width  || h == global.grid_height)
					{
						global.grid[# w, h] = 1; // set non-walkable
						instance_create_layer((w * 32) + + (room_width div 4), (h * 32) + (room_height div 4), "Instances_Objects", obj_wall); //add wall
					}
			    }
			}
		}
	}
	
	
	//for printing grid
	/*var gridString = "";
	for(var i = 0; i < global.grid_height + 1; i++)
	{
		for(var j = 0; j < global.grid_width + 1; j++)
		{
			gridString += string(string(global.grid[# j, i]) + " ");
		}
		gridString += "\n";
	}
	
	show_debug_message(gridString); */
}