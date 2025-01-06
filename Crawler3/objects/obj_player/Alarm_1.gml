			var possibleSpawns = array_create(0);
			
			for(var h = 0; h < ds_grid_height(global.grid); h++)
			{
				for(var w = 0; w < ds_grid_width(global.grid); w++)
				{
			
					//add possible spawn
					if(global.grid[# w,h] == 0 && global.gridOrg[# w,h] != 5 && global.gridOrg[# w,h] != 2 && w != ds_grid_width(global.grid) - 1 && w != ds_grid_width(global.grid) - 2 && h != ds_grid_height(global.grid) - 1 && h != ds_grid_height(global.grid) - 2)
					{
						array_push(possibleSpawns, string(w) + " " + string(h));
					}
			
				}
			}
			var indexofPlayer = irandom_range(0, array_length(possibleSpawns) - 1)
	
			var wPos = string_copy(string(array_get(possibleSpawns, indexofPlayer)), 1, string_last_pos(" ", string(array_get(possibleSpawns, indexofPlayer))) - 1);
			var hPos = string_copy(string(array_get(possibleSpawns, indexofPlayer)),  string_last_pos(" ", string(array_get(possibleSpawns, indexofPlayer))) + 1, string_length(string(array_get(possibleSpawns, indexofPlayer))));
			global.gridOrg[# (x - 16 - (room_width div 4)) div 32, (y - 16 - (room_height div 4)) div 32] = 0;
			obj_player.x = (real(wPos) * 32) + (room_width div 4) + 16;
			obj_player.y = (real(hPos) * 32) + (room_height div 4) + 16;
			global.gridOrg[# wPos,hPos] = 4;
			
			
			//delete arrow from amount
			global.turn++;
			global.arrowCount2--;
			change_fog();