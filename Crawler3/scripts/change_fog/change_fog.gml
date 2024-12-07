function change_fog()
{
		var objects = layer_get_all_elements("Instances_FogOfWar");
	
		//get the player location
		for(var w = 0; w < ds_grid_width(global.grid); w++)
		{
			for(var h = 0; h < ds_grid_height(global.grid); h++)
			{
				if(global.grid[# w, h] == 4)
				{
					var width = w;
					var height = h;
				}
			}
		}
		
		var instances = ds_list_create();
		//get all the values to highlight
		for(var w = 0; w < 5; w++)
		{
			for(var h = 0; h < 5; h++)
			{
				if(global.grid[# width, height] == )
				var n = collision_point_list((width * 32) + (room_width div 4) + 16, (height * 32) + (room_height div 4) + 16, obj_Fog, false, true, instances, false);
			}
		}
		
		
		var i = 0;
		repeat ds_list_size(instances) 
		{
			show_debug_message(instances[| i]);
			instances[| i].image_index = 0;
			i++;
		}
		ds_list_destroy(instances);
		
					
					
					
}
	