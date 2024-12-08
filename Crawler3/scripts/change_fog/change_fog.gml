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
		show_debug_message(string(width) + " " + string(height));
		
		var instancesIndex0 = ds_list_create();
		var instancesIndex3 = ds_list_create();
		
		//get all the values to highlight
		var radius = 5;
		var WallDetected = false;
		var WallDetected2 = false;
		for(var h = 0; h <= radius; h++)
		{
			for(var w = 0; w <= radius; w++)
			{
				if(WallDetected)
				{
					var n = collision_point_list(((width + w) * 32) + (room_width div 4) + 16, ((height + h) * 32) + (room_height div 4) + 16, obj_Fog, false, true, instancesIndex3, false);
				}
				else if(global.grid[# width + w, (height + h)] == -2 || global.grid[# width + w, (height + h)] == -1)
				{
					var n = collision_point_list(((width + w) * 32) + (room_width div 4) + 16, ((height + h) * 32) + (room_height div 4) + 16, obj_Fog, false, true, instancesIndex0, false);
					WallDetected = true;
				}
				else if(global.grid[# width + w, (height + h)] != -2 && global.grid[# width + w, (height + h)] != -1)
				{
					var n = collision_point_list(((width + w) * 32) + (room_width div 4) + 16, ((height + h) * 32) + (room_height div 4) + 16, obj_Fog, false, true, instancesIndex0, false);
				}
				
			}
		
			for(var w = -1; w >= -radius; w--)
			{
				if(WallDetected2)
				{
					var n = collision_point_list(((width + w) * 32) + (room_width div 4) + 16, ((height + h) * 32) + (room_height div 4) + 16, obj_Fog, false, true, instancesIndex3, false);
				}
				if(global.grid[# width + w, (height + h)] == -2 || global.grid[# width + w, (height + h)] == -1 && !WallDetected2)
				{
					var n = collision_point_list(((width + w) * 32) + (room_width div 4) + 16, ((height + h) * 32) + (room_height div 4) + 16, obj_Fog, false, true, instancesIndex0, false);
					WallDetected2 = true;
				}
				else if(global.grid[# width + w, (height + h)] != -2 && global.grid[# width + w, (height + h)] != -1 && !WallDetected2)
				{
					var n = collision_point_list(((width + w) * 32) + (room_width div 4) + 16, ((height + h) * 32) + (room_height div 4) + 16, obj_Fog, false, true, instancesIndex0, false);
				}
			}
			
			//reset variables
			WallDetected = false;
			WallDetected2 = false;
		}
		
		for(var h = -1; h >= -radius; h--)
		{
			for(var w = 0; w <= radius; w++)
			{
				if(WallDetected)
				{
					var n = collision_point_list(((width + w) * 32) + (room_width div 4) + 16, ((height + h) * 32) + (room_height div 4) + 16, obj_Fog, false, true, instancesIndex3, false);
				}
				else if(global.grid[# width + w, (height + h)] == -2 || global.grid[# width + w, (height + h)] == -1)
				{
					var n = collision_point_list(((width + w) * 32) + (room_width div 4) + 16, ((height + h) * 32) + (room_height div 4) + 16, obj_Fog, false, true, instancesIndex0, false);
					WallDetected = true;
				}
				else if(global.grid[# width + w, (height + h)] != -2 && global.grid[# width + w, (height + h)] != -1)
				{
					var n = collision_point_list(((width + w) * 32) + (room_width div 4) + 16, ((height + h) * 32) + (room_height div 4) + 16, obj_Fog, false, true, instancesIndex0, false);
				}
				
			}
		
			for(var w = -1; w >= -radius; w--)
			{
				if(WallDetected2)
				{
					var n = collision_point_list(((width + w) * 32) + (room_width div 4) + 16, ((height + h) * 32) + (room_height div 4) + 16, obj_Fog, false, true, instancesIndex3, false);
				}
				if(global.grid[# width + w, (height + h)] == -2 || global.grid[# width + w, (height + h)] == -1 && !WallDetected2)
				{
					var n = collision_point_list(((width + w) * 32) + (room_width div 4) + 16, ((height + h) * 32) + (room_height div 4) + 16, obj_Fog, false, true, instancesIndex0, false);
					WallDetected2 = true;
				}
				else if(global.grid[# width + w, (height + h)] != -2 && global.grid[# width + w, (height + h)] != -1 && !WallDetected2)
				{
					var n = collision_point_list(((width + w) * 32) + (room_width div 4) + 16, ((height + h) * 32) + (room_height div 4) + 16, obj_Fog, false, true, instancesIndex0, false);
				}
			}
			
			//reset variables
			WallDetected = false;
			WallDetected2 = false;
		}
		
		
		
		var i = 0;
		repeat ds_list_size(instancesIndex0) 
		{
			instancesIndex0[| i].image_index = 0;
			i++;
		}
		ds_list_destroy(instancesIndex0);
		
		var j = 0;
		repeat ds_list_size(instancesIndex3) 
		{
			instancesIndex3[| j].image_index = 2;
			j++;
		}
		ds_list_destroy(instancesIndex3);
		
					
					
}
	