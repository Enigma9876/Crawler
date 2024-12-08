function change_fog()
{
		var objects = layer_get_all_elements("Instances_FogOfWar");
	
		//get the player location
		for(var w = 0; w < ds_grid_width(global.grid); w++)
		{
			for(var h = 0; h < ds_grid_height(global.grid); h++)
			{
				if(global.gridOrg[# w, h] == 4)
				{
					var width = w;
					var height = h;
				}
			}
		}
		
		var instancesIndex0 = ds_list_create();
		
		//get all the values to highlight
		var radius = 10;
		var WallDetected = false;
		var WallDetected2 = false;
		for(var h = -radius; h <= radius; h++)
		{
			for(var w = -radius; w <= radius; w++)
			{
				
				//below
				if(width + w == width && h > 0)
				{
					var light = true;
					for(var h2 = h - 1; h2 >= 0; h2--)
					{
						var position = global.grid[# (width + w),(height + h2)];
						if(position == -1 || position == -2)
						{
							light = false;
						}
					}
					
					if(light)
					{
						var n = collision_point_list(((width + w) * 32) + (room_width div 4) + 16, ((height + h) * 32) + (room_height div 4) + 16, obj_Fog, false, true, instancesIndex0, false);
					}
				}
				
				//above
				if(width + w == width && h < 0)
				{
					var light = true;
					for(var h2 = h + 1; h2 <= 0; h2++)
					{
						var position = global.grid[# (width + w),(height + h2)];
						if(position == -1 || position == -2)
						{
							light = false;
						}
					}
					
					if(light)
					{
						var n = collision_point_list(((width + w) * 32) + (room_width div 4) + 16, ((height + h) * 32) + (room_height div 4) + 16, obj_Fog, false, true, instancesIndex0, false);
					}
				}
				
				//right
				if(height + h == height && w > 0)
				{
					var light = true;
					for(var w2 = w - 1; w2 >= 0; w2--)
					{
						var position = global.grid[# (width + w2),(height + h)];
						if(position == -1 || position == -2)
						{
							light = false;
						}
					}
					
					if(light)
					{
						var n = collision_point_list(((width + w) * 32) + (room_width div 4) + 16, ((height + h) * 32) + (room_height div 4) + 16, obj_Fog, false, true, instancesIndex0, false);
					}
				}
				
				//left
				if(height + h == height && w < 0)
				{
					var light = true;
					for(var w2 = w + 1; w2 <= 0; w2++)
					{
						var position = global.grid[# (width + w2),(height + h)];
						if(position == -1 || position == -2)
						{
							light = false;
						}
					}
					
					if(light)
					{
						var n = collision_point_list(((width + w) * 32) + (room_width div 4) + 16, ((height + h) * 32) + (room_height div 4) + 16, obj_Fog, false, true, instancesIndex0, false);
					}
				}
				
				//top left
				if(h < 0 && w < 0)
				{
						var light = true;
						var h2 = h;
						var w2 = w;
						
						while(h2 < 0 && w2 < 0)
						{

								if(h2 == -1 && w2 == -1)
								{
									h2 = 0;
									w2 = 0;
								}
								
								//set values
								if(h2 < -1)
									h2++;
								if(w2 < -1)
									w2++;
								
								
								if(w2 == w)
								{
									var position = global.grid[# (width + w2),(height + h2)];
									if(position == -1 || position == -2)
									{
										light = false;
									}
								}
								else if(h2 == h)
								{
									if(h2 == -1)
									{
										var position = global.grid[# (width + w2),(height + h2)];
										if(position == -1 || position == -2)
										{
											light = false;
										}
									}
								}
								
								//diagonal check
								if(w2 == w + 1 && w != -1 && h != -1)
								{
									var position = global.grid[# (width + w2),(height + h2)];
									if(position == -1 || position == -2)
									{
										light = false;
									}
								}
								else if(w2 != w + 1 && w2 != -1)
								{
									if(h2 == -1)
									{
										var position = global.grid[# (width + w2),(height + h2)];
										if(position == -1 || position == -2)
										{
											light = false;
										}
									}
									else
									{
										var position = global.grid[# (width + w2 - 1),(height + h2 - 1)];
										if(position == -1 || position == -2)
										{
											light = false;
										}
									}
								}
								if(w2 != w + 1 && h2 != -1)
								{
									var position = global.grid[# (width + w2),(height + h2)];
									if(position == -1 || position == -2)
									{
										light = false;
									}
								}
								
								if(w2 == -1 && h2 == -1)
								{
									var position = global.grid[# (width + w2),(height + h2)];
									if(position == -1 || position == -2)
									{
										light = false;
									}
								}
						}
					
					if(light)
					{
						var n = collision_point_list(((width + w) * 32) + (room_width div 4) + 16, ((height + h) * 32) + (room_height div 4) + 16, obj_Fog, false, true, instancesIndex0, false);
					}
				}
				
				//top right
				if(h < 0 && w > 0)
				{
						var light = true;
						var h2 = h;
						var w2 = w;
						
						while(h2 < 0 && w2 > 0)
						{

								if(h2 == -1 && w2 == 1)
								{
									h2 = 0;
									w2 = 0;
								}
								
								//set values
								if(h2 < -1)
									h2++;
								if(w2 > 1)
									w2--;
								
								
								if(w2 == w)
								{
									var position = global.grid[# (width + w2),(height + h2)];
									if(position == -1 || position == -2)
									{
										light = false;
									}
								}
								else if(h2 == h)
								{
									if(h2 == -1)
									{
										var position = global.grid[# (width + w2),(height + h2)];
										if(position == -1 || position == -2)
										{
											light = false;
										}
									}
								}
								
								//diagonal check
								if(w2 == w - 1 && w != 1 && h != -1)
								{
									var position = global.grid[# (width + w2),(height + h2)];
									if(position == -1 || position == -2)
									{
										light = false;
									}
								}
								else if(w2 != w - 1 && w2 != 1)
								{
									if(h2 == -1)
									{
										var position = global.grid[# (width + w2),(height + h2)];
										if(position == -1 || position == -2)
										{
											light = false;
										}
									}
									else
									{
										var position = global.grid[# (width + w2 + 1),(height + h2 - 1)];
										if(position == -1 || position == -2)
										{
											light = false;
										}
									}
								}
								if(w2 != w - 1 && h2 != -1)
								{
									var position = global.grid[# (width + w2),(height + h2)];
									if(position == -1 || position == -2)
									{
										light = false;
									}
								}
								
								if(w2 == 1 && h2 == -1)
								{
									var position = global.grid[# (width + w2),(height + h2)];
									if(position == -1 || position == -2)
									{
										light = false;
									}
								}
						}
					
					if(light)
					{
						var n = collision_point_list(((width + w) * 32) + (room_width div 4) + 16, ((height + h) * 32) + (room_height div 4) + 16, obj_Fog, false, true, instancesIndex0, false);
					}
				}
				
				//bottom right
				if(h > 0 && w > 0)
				{
						var light = true;
						var h2 = h;
						var w2 = w;
						
						while(h2 > 0 && w2 > 0)
						{

								if(h2 == 1 && w2 == 1)
								{
									h2 = 0;
									w2 = 0;
								}
								
								//set values
								if(h2 > 1)
									h2--;
								if(w2 > 1)
									w2--;
								
								
								if(w2 == w)
								{
									var position = global.grid[# (width + w2),(height + h2)];
									if(position == -1 || position == -2)
									{
										light = false;
									}
								}
								else if(h2 == h)
								{
									if(h2 == 1)
									{
										var position = global.grid[# (width + w2),(height + h2)];
										if(position == -1 || position == -2)
										{
											light = false;
										}
									}
								}
								
								//diagonal check
								if(w2 == w - 1 && w != 1 && h != 1)
								{
									var position = global.grid[# (width + w2),(height + h2)];
									if(position == -1 || position == -2)
									{
										light = false;
									}
								}
								else if(w2 != w - 1 && w2 != 1)
								{
									if(h2 == 1)
									{
										var position = global.grid[# (width + w2),(height + h2)];
										if(position == -1 || position == -2)
										{
											light = false;
										}
									}
									else
									{
										var position = global.grid[# (width + w2 + 1),(height + h2 + 1)];
										if(position == -1 || position == -2)
										{
											light = false;
										}
									}
								}
								if(w2 != w - 1 && h2 != 1)
								{
									var position = global.grid[# (width + w2),(height + h2)];
									if(position == -1 || position == -2)
									{
										light = false;
									}
								}
								
								if(w2 == 1 && h2 == 1)
								{
									var position = global.grid[# (width + w2),(height + h2)];
									if(position == -1 || position == -2)
									{
										light = false;
									}
								}
						}
					
					if(light)
					{
						var n = collision_point_list(((width + w) * 32) + (room_width div 4) + 16, ((height + h) * 32) + (room_height div 4) + 16, obj_Fog, false, true, instancesIndex0, false);
					}
				}
				
				//bottom left
				if(h > 0 && w < 0)
				{
						var light = true;
						var h2 = h;
						var w2 = w;
						
						while(h2 > 0 && w2 < 0)
						{

								if(h2 == 1 && w2 == -1)
								{
									h2 = 0;
									w2 = 0;
								}
								
								//set values
								if(h2 > 1)
									h2--;
								if(w2 < -1)
									w2++;
								
								
								if(w2 == w)
								{
									var position = global.grid[# (width + w2),(height + h2)];
									if(position == -1 || position == -2)
									{
										light = false;
									}
								}
								else if(h2 == h)
								{
									if(h2 == 1)
									{
										var position = global.grid[# (width + w2),(height + h2)];
										if(position == -1 || position == -2)
										{
											light = false;
										}
									}
								}
								
								//diagonal check
								if(w2 == w + 1 && w != -1 && h != 1)
								{
									var position = global.grid[# (width + w2),(height + h2)];
									if(position == -1 || position == -2)
									{
										light = false;
									}
								}
								else if(w2 != w + 1 && w2 != -1)
								{
									if(h2 == 1)
									{
										var position = global.grid[# (width + w2),(height + h2)];
										if(position == -1 || position == -2)
										{
											light = false;
										}
									}
									else
									{
										var position = global.grid[# (width + w2 - 1),(height + h2 + 1)];
										if(position == -1 || position == -2)
										{
											light = false;
										}
									}
								}
								if(w2 != w + 1 && h2 != 1)
								{
									var position = global.grid[# (width + w2),(height + h2)];
									if(position == -1 || position == -2)
									{
										light = false;
									}
								}
								
								if(w2 == -1 && h2 == 1)
								{
									var position = global.grid[# (width + w2),(height + h2)];
									if(position == -1 || position == -2)
									{
										light = false;
									}
								}
						}
					
					if(light)
					{
						var n = collision_point_list(((width + w) * 32) + (room_width div 4) + 16, ((height + h) * 32) + (room_height div 4) + 16, obj_Fog, false, true, instancesIndex0, false);
					}
				}
				
				if(h = 0 && w = 0)
				{
					var n = collision_point_list(((width + w) * 32) + (room_width div 4) + 16, ((height + h) * 32) + (room_height div 4) + 16, obj_Fog, false, true, instancesIndex0, false);
				}
				
			}
		
		}
		
		var toAdd = layer_get_all_elements("Instances_FogOfWar");
		
		for(var i = 0; i < array_length(toAdd); i++)
		{
			layer_instance_get_instance(toAdd[i]).image_index = 3;
		}
		
		var i = 0;
		repeat ds_list_size(instancesIndex0) 
		{
			instancesIndex0[| i].image_index = 0;
			i++;
		}
		ds_list_destroy(instancesIndex0);
					
					
}
	