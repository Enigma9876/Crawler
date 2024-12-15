function tutorial_room()
{
	ds_grid_resize(global.gridOrg, ds_grid_width(global.grid), ds_grid_height(global.grid));
	
	for(var i = 0; i < ds_grid_height(global.grid); i++)
	{
		for(var j = 0; j < ds_grid_width(global.grid); j++)
		{
			global.gridOrg[# i, j] = 0;
		}
	}
	
	//set up above grid
	for(var h = 0; h < ds_grid_height(global.grid); h++)
	{
		for(var w = 0; w < ds_grid_width(global.grid); w++)
		{
			//add fog
			var fog = instance_create_layer((w * 32) + (room_width div 4) + 16, (h * 32) + (room_height div 4) + 16, "Instances_FogOfWar", obj_Fog);
			
			//get adjacent tiles
			var left = global.grid[# w - 1,h];
			var right = global.grid[# w + 1,h];
			var up = global.grid[# w,h - 1];
			var down = global.grid[# w,h + 1];
			var topleft = global.grid[# w - 1,h - 1];
			var bottomleft = global.grid[# w - 1,h + 1];
			var topright = global.grid[# w + 1,h - 1];
			var bottomright = global.grid[# w + 1,h + 1];
			
			if(global.grid == 4)
			{
				//set and print player
				instance_create_layer((real(w) * 32) + (room_width div 4) + 16, (real(h) * 32) + (room_height div 4) + 16, "Instances_player", obj_player);
				instance_create_layer((real(w) * 32) + (room_width div 4) - 32, (real(h) * 32) + (room_height div 4), "Instances_player", obj_selection);
			}
			//print wall
			if(global.grid[# w,h] == -2)
			{
				if(left == -2 && right == -2 && (up == 0 || up == -1) && (down == 10 || down == undefined || down == -2))
				{
					var rand = irandom_range(1,2)
					
					if(rand == 1)
						instance_create_layer((w * 32) + (room_width div 4), (h * 32) + (room_height div 4), "Instances_WallandFloor", obj_wallBackward1);
					else if(rand == 2)
						instance_create_layer((w * 32) + (room_width div 4), (h * 32) + (room_height div 4), "Instances_WallandFloor", obj_wallBackward2);
				}
				else if((left == -2 || left == 10 || left == undefined) && (right == 0 || right == -1) && up == -2 && down == -2)
				{
					var rand = irandom_range(1,2)
					
					if(rand == 1)
						instance_create_layer((w * 32) + (room_width div 4), (h * 32) + (room_height div 4), "Instances_WallandFloor", obj_sideDoorLeft1);
					else if(rand == 2)
						instance_create_layer((w * 32) + (room_width div 4), (h * 32) + (room_height div 4), "Instances_WallandFloor", obj_sideDoorLeft2);
				}
				else if((left == 0 || left == -1) && (right == -2 || right == 10 || right == undefined) && up == -2 && down == -2)
				{
					var rand = irandom_range(1,2)
					
					if(rand == 1)
						instance_create_layer((w * 32) + (room_width div 4), (h * 32) + (room_height div 4), "Instances_WallandFloor", obj_sideDoorRight1);
					else if(rand == 2)
						instance_create_layer((w * 32) + (room_width div 4), (h * 32) + (room_height div 4), "Instances_WallandFloor", obj_sideDoorRight2);
				}
				else if((left == 10 || left == undefined) && right == -2 && (up == 10 || up == undefined) && down == -2)
				{
					instance_create_layer((w * 32) + (room_width div 4), (h * 32) + (room_height div 4), "Instances_WallandFloor", obj_corner1);
				}
				else if((left == 10 || left == undefined || left == -2) && right == -2 && (up == 10 || up == undefined || up == -2) && down == -2 && bottomright == 0)
				{
					instance_create_layer((w * 32) + (room_width div 4), (h * 32) + (room_height div 4), "Instances_WallandFloor", obj_corner1);
				}
				else if((left == 10 || left == undefined) && right == -2 && up == -2 && (down == 10 || down == undefined))
				{
					instance_create_layer((w * 32) + (room_width div 4), (h * 32) + (room_height div 4), "Instances_WallandFloor", obj_corner2);
				}
				else if((left == -2 || left == undefined || left == 10) && right == -2 && up == -2 && (down == 10 || down == undefined || down == -2) && topright == 0)
				{
					instance_create_layer((w * 32) + (room_width div 4), (h * 32) + (room_height div 4), "Instances_WallandFloor", obj_corner2);
				}
				else if(left == -2 && (right == 10 || right == undefined || right == -2) && (up == 10 || up == undefined) && down == -2)
				{
					instance_create_layer((w * 32) + (room_width div 4), (h * 32) + (room_height div 4), "Instances_WallandFloor", obj_corner3);
				}
				else if(left == -2 && (right == 10 || right == undefined || right == -2) && up == -2 && (down == 10 || down == undefined || down == -2) && bottomleft == 0)
				{
					instance_create_layer((w * 32) + (room_width div 4), (h * 32) + (room_height div 4), "Instances_WallandFloor", obj_corner3);
				}
				else if(left == -2 && (right == 10 || right == undefined) && up == -2 && (down == 10 || down == undefined))
				{
					instance_create_layer((w * 32) + (room_width div 4), (h * 32) + (room_height div 4), "Instances_WallandFloor", obj_corner4);
				}
				else if(left == -2 && (right == 10 || right == undefined || right == -2) && up == -2 && (down == 10 || down == undefined || down == -2) && topleft == 0)
				{
					instance_create_layer((w * 32) + (room_width div 4), (h * 32) + (room_height div 4), "Instances_WallandFloor", obj_corner4);
				}
				else if(left == -2 && (right == 0 || right == -1) && up == 0 && down == -2)
				{
					instance_create_layer((w * 32) + (room_width div 4), (h * 32) + (room_height div 4), "Instances_WallandFloor", obj_wallturnaroundleft1);
				}
				else if((left == 0 || left == -1) && right == -2 && up == 0 && down == -2)
				{
					instance_create_layer((w * 32) + (room_width div 4), (h * 32) + (room_height div 4), "Instances_WallandFloor", obj_wallturnaroundright1);
				}
				else if(left == 0 && right == -2 && up == -1 && down == -2)
				{
					instance_create_layer((w * 32) + (room_width div 4), (h * 32) + (room_height div 4), "Instances_WallandFloor", obj_wallturnaroundright1);
				}
				else
				{
					if(down == -1)
						instance_create_layer((w * 32) + (room_width div 4), (h * 32) + (room_height div 4), "Instances_WallandFloor", obj_wallForward1);
					else
					{
						var rand = irandom_range(1,15)
					
						if(rand <= 13)
							instance_create_layer((w * 32) + (room_width div 4), (h * 32) + (room_height div 4), "Instances_WallandFloor", obj_wallForward1);
						else if(rand == 14)
							instance_create_layer((w * 32) + (room_width div 4), (h * 32) + (room_height div 4), "Instances_WallandFloor", obj_wallForward2);
						else if(rand == 15)
							instance_create_layer((w * 32) + (room_width div 4), (h * 32) + (room_height div 4), "Instances_WallandFloor", obj_wallForward3);
					}
					
				}
				
				
			}
			
			//doors
			else if(global.grid[# w,h] == -1)
			{
				if(left == -2 && right == -2 && (up == -1 || up == 0) && down == 0)
				{
					instance_create_layer((w * 32) + (room_width div 4), (h * 32) + (room_height div 4), "Instances_WallandFloor", obj_Door1);
				}
				else if(left == -2 && right == -2 && up == 0 && down == -1)
				{
					global.grid[# w,h] = 0;
				}
				
				if(left == 0 && (right == -1 || right == 0) && up == -2 && down == -2)
				{
					instance_create_layer((w * 32) + (room_width div 4), (h * 32) + (room_height div 4), "Instances_WallandFloor", obj_Door2);
				}
				else if(left == -1 && right == 0 && up == -2 && down == -2)
				{
					global.grid[# w,h] = 0;
				}
						
			}
			
			//floors
			if(global.grid[# w,h] == 0 || global.grid[# w,h] == 3)
			{
				if(left == 0 && (right == 0 || right == -1) && up == 0 && down == -2)
				{
					var rand = irandom_range(1,2)
					
					if(rand == 1)
						instance_create_layer((w * 32) + (room_width div 4), (h * 32) + (room_height div 4), "Instances_WallandFloor", obj_floorside1);
					else if(rand == 2)
						instance_create_layer((w * 32) + (room_width div 4), (h * 32) + (room_height div 4), "Instances_WallandFloor", obj_floorside13);
				}
				else if((left == 0 || right == -1) && (right == 0 || right == -1) && up == -2 && down == 0)
				{
					var rand = irandom_range(1,2)
					
					if(rand == 1)
						instance_create_layer((w * 32) + (room_width div 4), (h * 32) + (room_height div 4), "Instances_WallandFloor", obj_floorside2);
					else if(rand == 2)
						instance_create_layer((w * 32) + (room_width div 4), (h * 32) + (room_height div 4), "Instances_WallandFloor", obj_floorside12);
				}
				else if(left == -2 && right == 0 && up == 0 && down == -2)
				{
					var rand = irandom_range(1,3)
					if(rand == 1)
						instance_create_layer((w * 32) + (room_width div 4), (h * 32) + (room_height div 4), "Instances_WallandFloor", obj_floorside3);
					else if(rand == 2)
						instance_create_layer((w * 32) + (room_width div 4), (h * 32) + (room_height div 4), "Instances_WallandFloor", obj_floorSpecial7);
					else if(rand == 3)
						instance_create_layer((w * 32) + (room_width div 4), (h * 32) + (room_height div 4), "Instances_WallandFloor", obj_floorSpecial1);
				}
				else if(left == 0 && right == -2 && up == 0 && down == -2)
				{
					var rand = irandom_range(1,4);
					
					if(rand <= 2)
						instance_create_layer((w * 32) + (room_width div 4), (h * 32) + (room_height div 4), "Instances_WallandFloor", obj_floorside4);
					else if(rand == 3)
						instance_create_layer((w * 32) + (room_width div 4), (h * 32) + (room_height div 4), "Instances_WallandFloor", obj_floorSpecial3);
					else if(rand == 4)
						instance_create_layer((w * 32) + (room_width div 4), (h * 32) + (room_height div 4), "Instances_WallandFloor", obj_floorSpecial9);
				}
				else if(left == -2 && right == 0 && up == -2 && down == 0)
				{
					var rand = irandom_range(1,4)
					
					if(rand <= 2)
						instance_create_layer((w * 32) + (room_width div 4), (h * 32) + (room_height div 4), "Instances_WallandFloor", obj_floorside5);
					else if(rand == 3)
						instance_create_layer((w * 32) + (room_width div 4), (h * 32) + (room_height div 4), "Instances_WallandFloor", obj_floorSpecial2);
					else if(rand == 4)
						instance_create_layer((w * 32) + (room_width div 4), (h * 32) + (room_height div 4), "Instances_WallandFloor", obj_floorSpecial8);
				}
				else if(left == 0 && right == -2 && up == -2 && down == 0)
				{
					var rand = irandom_range(1,4)
					if(rand <= 2)
						instance_create_layer((w * 32) + (room_width div 4), (h * 32) + (room_height div 4), "Instances_WallandFloor", obj_floorside6);
					else if(rand == 3)
						instance_create_layer((w * 32) + (room_width div 4), (h * 32) + (room_height div 4), "Instances_WallandFloor", obj_floorSpecial4);
					else if(rand == 4)
						instance_create_layer((w * 32) + (room_width div 4), (h * 32) + (room_height div 4), "Instances_WallandFloor", obj_floorSpecial6);
					
				}
				else if(left == -2 && right == 0 && (up == 0 || up == -1) && (down == 0 || down == -1))
				{
					var rand = irandom_range(1,2)
					
					if(rand == 1)
						instance_create_layer((w * 32) + (room_width div 4), (h * 32) + (room_height div 4), "Instances_WallandFloor", obj_floorside7);
					else if(rand == 2)
						instance_create_layer((w * 32) + (room_width div 4), (h * 32) + (room_height div 4), "Instances_WallandFloor", obj_floorside14);
				}
				else if(left == 0 && right == -2 && (up == 0 || up == -1) && (down == 0 || down == -1))
				{
					var rand = irandom_range(1,2)
					
					if(rand == 1)
						instance_create_layer((w * 32) + (room_width div 4), (h * 32) + (room_height div 4), "Instances_WallandFloor", obj_floorside8);
					else if(rand == 2)
						instance_create_layer((w * 32) + (room_width div 4), (h * 32) + (room_height div 4), "Instances_WallandFloor", obj_floorside11);
				}
				else if(left == -2 && right == 0 && up == -2 && down == 0)
				{
					instance_create_layer((w * 32) + (room_width div 4), (h * 32) + (room_height div 4), "Instances_WallandFloor", obj_floorside5);
				}
				else if(left == -1 && right == 0 && up == -2 && down == -2)
				{
					instance_create_layer((w * 32) + (room_width div 4), (h * 32) + (room_height div 4), "Instances_WallandFloor", object_floorside9);
				}
				else if(left == -2 && right == -2 && up == 0 && down == -1)
				{
					instance_create_layer((w * 32) + (room_width div 4), (h * 32) + (room_height div 4), "Instances_WallandFloor", obj_floorside10);
				}
				else
				{
					var rand = irandom_range(1,40)
					
					if(rand == 1)
						instance_create_layer((w * 32) + (room_width div 4), (h * 32) + (room_height div 4), "Instances_WallandFloor", obj_floorSpecial5);
					else if(rand <= 12)
						instance_create_layer((w * 32) + (room_width div 4), (h * 32) + (room_height div 4), "Instances_WallandFloor", obj_floor1);
					else if(rand <= 20)
						instance_create_layer((w * 32) + (room_width div 4), (h * 32) + (room_height div 4), "Instances_WallandFloor", obj_floor2);
					else if(rand <= 28)
						instance_create_layer((w * 32) + (room_width div 4), (h * 32) + (room_height div 4), "Instances_WallandFloor", obj_floor3);
					else
						instance_create_layer((w * 32) + (room_width div 4), (h * 32) + (room_height div 4), "Instances_WallandFloor", obj_floor4);
				}
			}
			if((w == 4 && h == 30) || (w == 3 && h == 26) || (w == 2 && h == 13) || (w == 4 && h == 6) || (w == 3 && h == 8))
			{
				global.grid[# w,h] = 11;
				instance_create_layer((real(w) * 32) + (room_width div 4), (real(h) * 32) + (room_height div 4), "Instances_player", obj_sign1);
			}
			if(w == 4 && h == 31)
			{
				global.gridOrg[# w,h] = 4;
				global.grid[# w, h] = 0;
				instance_create_layer((real(w) * 32) + (room_width div 4) + 16, (real(h) * 32) + (room_height div 4) + 16, "Instances_player", obj_player);
				instance_create_layer((real(w) * 32) + (room_width div 4) - 32, (real(h) * 32) + (room_height div 4), "Instances_player", obj_selection);
			}
			if((w == 3 && h == 15) || (w == 5 && h == 18) || (w == 6 && h == 13))
			{
				instance_create_layer((w * 32) + (room_width div 4) + 16, (h * 32) + (room_height div 4) + 16, "Instances_Enemies", obj_enemy1);
				global.gridOrg[# w,h] = 5;
			}
			else if(w == 2 && h == 12)
			{
				instance_create_layer((w * 32) + (room_width div 4), (h * 32) + (room_height div 4), "Instances_Objects", obj_trap1);
				global.grid[# w,h] = 8;
			}
			else if((w == 2 && h == 3) || (w == 7 && h == 5) || (w == 3 && h == 4))
			{
				instance_create_layer((w * 32) + (room_width div 4), (h * 32) + (room_height div 4), "Instances_Objects", obj_box1);
				global.grid[# w,h] = 3;
			}
			//potions
			else if((w == 1 && h == 4))
			{
				instance_create_layer((w * 32) + (room_width div 4), (h * 32) + (room_height div 4), "Instances_Objects", obj_potion1);
				global.gridOrg[# w,h] = 2;
			}
			
			
		}
	}
	
	
	
	//print out boxes and potions
	/*var maxLadders = 3;
	var ladderCount = 0;
	var mandLadder = 0;
	for(var h = 0; h < ds_grid_height(global.grid); h++)
	{
		for(var w = 0; w < ds_grid_width(global.grid); w++)
		{	
			//get adjacent tiles
			var left = global.grid[# w - 1,h];
			var right = global.grid[# w + 1,h];
			var up = global.grid[# w,h - 1];
			var down = global.grid[# w,h + 1];
			var left2 = global.grid[# w - 2,h];
			var right2 = global.grid[# w + 2,h];
			var up2 = global.grid[# w ,h - 2];
			var down2 = global.grid[# w ,h + 2];
			
			//deal with random
			var rand = irandom_range(1,200);
			if(global.grid[# w,h] == 0 && left != -1 && right != -1 && down != -1 && up != -1 && left2 != -1 && right2 != -1 && down2 != -1 && up2 != -1)
			{
				mandLadder++;
			}
			
			//add possible spawn
			if(global.grid[# w,h] == 0 && left != -1 && right != -1 && down != -1 && up != -1 && left2 != -1 && right2 != -1 && down2 != -1 && up2 != -1 && (ladderCount < maxLadders && (rand == 11 || mandLadder == 20)))
			{
				instance_create_layer((w * 32) + (room_width div 4), (h * 32) + (room_height div 4), "Instances_Objects", obj_ladder);
				global.grid[# w,h] = 9;
				 ladderCount ++;
			}
			else if(global.grid[# w,h] == 0 && rand <= 15 && left != -1 && right != -1 && down != -1 && up != -1 && left2 != -1 && right2 != -1 && down2 != -1 && up2 != -1 && left != -2 && right != -2 && up != -2 && down != -2)
			{
				instance_create_layer((w * 32) + (room_width div 4), (h * 32) + (room_height div 4), "Instances_Objects", obj_box1);
				global.grid[# w,h] = 3;
			}
			//potions
			else if(global.grid[# w,h] == 0 && w != ds_grid_width(global.grid) - 1 && w != ds_grid_width(global.grid) - 2 && h != ds_grid_height(global.grid) - 1 && h != ds_grid_height(global.grid) - 2 && rand <= 25 && left != -1 && right != -1 && down != -1 && up != -1 && left2 != -1 && right2 != -1 && down2 != -1 && up2 != -1 && left != -2 && right != -2 && up != -2 && down != -2)
			{
				instance_create_layer((w * 32) + (room_width div 4), (h * 32) + (room_height div 4), "Instances_Objects", obj_potion1);
				global.gridOrg[# w,h] = 2;
			}
			
		}
	}
	


	
	
	
	
	
	//add enemies
	for(var h = 0; h < ds_grid_height(global.grid); h++)
	{
		for(var w = 0; w < ds_grid_width(global.grid); w++)
		{	
			//get adjacent tiles
			var left = global.grid[# w - 1,h];
			var right = global.grid[# w + 1,h];
			var up = global.grid[# w,h - 1];
			var down = global.grid[# w,h + 1];
			var left2 = global.grid[# w - 2,h];
			var right2 = global.grid[# w + 2,h];
			var up2 = global.grid[# w ,h - 2];
			var down2 = global.grid[# w ,h + 2];
			
			//get adjacent tiles on upper layer
			var left3 = global.gridOrg[# w - 1,h];
			var right3 = global.gridOrg[# w + 1,h];
			var up3 = global.gridOrg[# w,h - 1];
			var down3 = global.gridOrg[# w,h + 1];
			var left4 = global.gridOrg[# w - 2,h];
			var right4 = global.gridOrg[# w + 2,h];
			var up4 = global.gridOrg[# w ,h - 2];
			var down4 = global.gridOrg[# w ,h + 2];
			
			//deal with random
			var rand = irandom_range(1,50);
			
			//add possible spawn
			if(global.gridOrg[# w,h] != 2 && global.gridOrg[# w,h] != 4 && global.grid[# w,h] == 0 && rand <= 3 && left3 != 4 && right3 != 4 && down3 != 4 && up3 != 4 && left4 != 4 && right4 != 4 && down4 != 4 && up4 != 4 && left != -1 && right != -1 && down != -1 && up != -1 && left2 != -1 && right2 != -1 && down2 != -1 && up2 != -1 && w != ds_grid_width(global.grid) - 1 && w != ds_grid_width(global.grid) - 2 && h != ds_grid_height(global.grid) - 1 && h != ds_grid_height(global.grid) - 2)
			{
				instance_create_layer((w * 32) + (room_width div 4) + 16, (h * 32) + (room_height div 4) + 16, "Instances_Enemies", obj_enemy1);
				global.gridOrg[# w,h] = 5;
			}
			
		}
	} */
	
	ds_grid_resize(global.gridRes, ds_grid_width(global.gridOrg), ds_grid_height(global.gridOrg))
	ds_grid_resize(global.gridPow, ds_grid_width(global.gridOrg), ds_grid_height(global.gridOrg))
	
	for(var i = 0; i < ds_grid_height(global.gridOrg); i++)
	{
		for(var j = 0; j < ds_grid_width(global.gridOrg); j++)
		{
			global.gridRes[# i, j] = global.gridOrg[# i, j];
			global.gridPow[# i, j] = 0;
		}
	}
	
	

	//add background
	instance_create_layer(0, 0, "Instances_Background", obj_background);
	
	//change fog initially
	change_fog();
}