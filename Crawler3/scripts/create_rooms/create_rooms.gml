function create_rooms(width, height)
{
	//indexes meanings
	//10 = empty space out side grid
	//9 = ladder
	//5 = enemies
	//4 = player
	//3 = box
	//2 = potion
	//1 = open doors
	//0 = floor
	//-1 = doors
	//-2 = walls
		
	var arrayWithRooms = ds_grid_create(width, height)
	
	//set up individual rooms with random heights and widths
	for(var w = 0; w < width; w++)
	{
		var randomWidth = irandom_range((global.grid_height div width) div 2 - 1, (global.grid_height div width) + 1);
		for(var h = 0; h < height; h++)
		{
			var randomHeight = irandom_range((global.grid_height div height) div 2 - 1, (global.grid_height div height) + 1);
			
			var roomGrid = ds_grid_create(randomWidth,randomHeight);
			arrayWithRooms[w,h] = roomGrid;
		}
	}
	
	//setting up the binary
	for(var w = 0; w < width; w++)
	{
		for(var h = 0; h < height; h++)
		{
			var roomGrid = arrayWithRooms[w,h];
		
			
			for(var w1 = 0; w1 < ds_grid_width(roomGrid); w1++)
			{
				for(var h1 = 0; h1 < ds_grid_height(roomGrid); h1++)
				{
					//set borders to 1 (walls/no-walkables)
					if((w1 == 0 || h1 == 0) || (w1 == ds_grid_width(roomGrid) - 1 || h1 == ds_grid_height(roomGrid) - 1))
					{
						roomGrid[# w1,h1] = -2;
					}
				}
			}
			
			arrayWithRooms[w,h] = roomGrid;
		}
	}
		
	//add door
	for(var w = 0; w < width; w++)
	{
		for(var h = 0; h < height; h++)
		{
			var roomGrid = arrayWithRooms[w,h];
			
			//checksides
			var left = true;
			var right = true;
			var up = true;
			var down = true;
			
			if(w == 0)
				left = false;
			if(h == 0)
				up = false;
			if(w == width - 1)
				right = false
			if(h = height - 1)
				down = false;
				
				
			//check for adding door
			
			if(down)
			{
				//create arrays that will check
				var FirstCheck = array_create(0);
				var SecondCheck = array_create(0);
				var ThirdCheck = array_create(0);
				
				//grid to check it
				var roomGridCheck = arrayWithRooms[w,h + 1];
				
				//first line
				for(var w1 = 0; w1 < ds_grid_width(roomGrid); w1++)
				{
					array_push(FirstCheck, roomGrid[# w1,ds_grid_height(roomGrid) - 1]);
				}
				
				//second line
				for(var w1 = 0; w1 < ds_grid_width(roomGridCheck); w1++)
				{
					array_push(SecondCheck, roomGridCheck[# w1,0]);
				}
				
				//third line
				for(var w1 = 0; w1 < ds_grid_width(roomGridCheck); w1++)
				{
					array_push(ThirdCheck, roomGridCheck[# w1,1]);
				}
				
				//search for valid index
				var AlreadyDoor = false;
				var listofPossible = array_create(0); 
				for(var w1 = 1; w1 < ds_grid_width(roomGridCheck); w1++)
				{
					
					var firstIndex = array_get(FirstCheck,w1);
					var SecondIndex = array_get(SecondCheck,w1);
					var ThirdIndex = array_get(ThirdCheck,w1);
					
					if(firstIndex == -2 && SecondIndex == -2 && ThirdIndex == 0)
					{
						array_push(listofPossible, w1);
					}
					else if(firstIndex == 0 && SecondIndex == 0 && ThirdIndex == 0)
					{
						AlreadyDoor = true;
					}

				}
				
				//select random index to be door
				if(!AlreadyDoor && array_length(listofPossible) > 0)
				{
					var index = irandom_range(0, array_length(listofPossible) - 1);
					
					roomGrid[# array_get(listofPossible, index), ds_grid_height(roomGrid) - 1] = -1;
					roomGridCheck[# array_get(listofPossible, index), 0] = -1;
					
				}
			}
			
			
			//for side doors
			if(right)
			{
				//get what room to connect
				var startingPoint = 0;
				var endingPoint = 0;
				for(var h1 = 0; h1 < h; h1++)
				{
					startingPoint += ds_grid_height(arrayWithRooms[w,h1]);
				}
				endingPoint = startingPoint + ds_grid_height(roomGrid);
				
				//add the rroms to connect to this array if 0 then no connections
				var arrayOfRoomsToConnect = array_create(0);
				
				var checkHeightStart = 0;
				var checkHeightEnd = 0;
				for(var h1 = 0; h1 < height; h1++)
				{
					checkHeightEnd = checkHeightStart + ds_grid_height(arrayWithRooms[w + 1,h1]);
					//check
					if((checkHeightEnd > startingPoint && checkHeightEnd < endingPoint) || (checkHeightStart >= startingPoint && checkHeightStart < endingPoint))
					{
						//add room to list for connection
						array_push(arrayOfRoomsToConnect, h1);
						
					}
					checkHeightStart += ds_grid_height(arrayWithRooms[w + 1,h1]);
				}
				
				
				//adding doors to the various connections
				for(i = 0; i < array_length(arrayOfRoomsToConnect); i++)
				{
					var roomGridCheck = arrayWithRooms[w + 1,array_get(arrayOfRoomsToConnect, i)];
					
					var startingPoint1 = 0;
					var startingPoint2 = 0;
					var	endingPoint1 = 0;
					var endingPoint2 = 0;
					
					//original room
					for(var h1 = 0; h1 < h; h1++)
					{
						startingPoint1 += ds_grid_height(arrayWithRooms[w,h1]);
					}
					endingPoint1 = startingPoint1 + ds_grid_height(roomGrid);
					
					//room getting connected
					for(var h1 = 0; h1 < array_get(arrayOfRoomsToConnect, i); h1++)
					{
						startingPoint2 += ds_grid_height(arrayWithRooms[w + 1,h1]);
					}
					endingPoint2 = startingPoint2 + ds_grid_height(roomGridCheck);
					
					
					//get starting and ending points
					var start;
					if(startingPoint1 >= startingPoint2)
					{
						start = 0;
					}
					else if(startingPoint1 < startingPoint2)
					{
						start = abs(startingPoint1 - startingPoint2);
					}
					
					var ending;
					if(endingPoint1 <= endingPoint2)
					{
						ending = ds_grid_height(roomGrid) - 1;
					}
					else if(endingPoint1 > endingPoint2)
					{
						ending = ds_grid_height(roomGrid) - abs(endingPoint1 - endingPoint2) - 1;
					}
					
					var start2;
					if(startingPoint1 > startingPoint2)
					{
						start2 = abs(startingPoint1 - startingPoint2);
					}
					else if(startingPoint1 <= startingPoint2)
					{
						start2 = 0;
					}
					
					var ending2;
					if(endingPoint1 < endingPoint2)
					{
						ending2 = (ds_grid_height(roomGridCheck) - 1) - abs(endingPoint1 - endingPoint2);
					}
					else if(endingPoint1 >= endingPoint2)
					{
						ending2 = ds_grid_height(roomGridCheck) - 1;
					}
					
					//get door and place it
					var FirstCheck = array_create(0);
					var SecondCheck = array_create(0);
					var ThirdCheck = array_create(0);
				
					
					//first line
					for(var h1 = start; h1 <= ending; h1++)
					{
						array_push(FirstCheck, roomGrid[# ds_grid_width(roomGrid) - 1, h1]);
					}
				
					//second line
					for(var h1 = start2; h1 <= ending2; h1++)
					{
						array_push(SecondCheck, roomGridCheck[# 0,h1]);
					}
				
					//third line
					for(var h1 = start2; h1 <= ending2; h1++)
					{
						array_push(ThirdCheck, roomGridCheck[# 1,h1]);
					}
					
					//search for valid index
					var AlreadyDoor = false;
					var listofPossible = array_create(0); 
					for(var h1 = 1; h1 < ending - start; h1++)
					{
					
						var firstIndex = array_get(FirstCheck,h1);
						var SecondIndex = array_get(SecondCheck,h1);
						var ThirdIndex = array_get(ThirdCheck,h1);
					
						if(firstIndex == -2 && SecondIndex == -2 && ThirdIndex == 0)
						{
							array_push(listofPossible, h1);
						}
						else if(firstIndex == 0 && SecondIndex == 0 && ThirdIndex == 0)
						{
							AlreadyDoor = true;
						}

					}
					
				
					//select random index to be door
					if(!AlreadyDoor && array_length(listofPossible) > 0)
					{
						var index = irandom_range(0, array_length(listofPossible) - 1);
					
						roomGrid[# ds_grid_width(roomGrid) - 1, array_get(listofPossible, index) + start] = -1;
						roomGridCheck[# 0, array_get(listofPossible, index) + start2] = -1;
					}
					
					
					
				} 
				
				
			} 
		}
				
		}
	
	
	
	
	
	//combine into main grid
	var previousRoomLeaveWidth = 0;
	var previousRoomLeaveHeight = 0;
	var h2 = 0;
	var w2 = 0;
	
	for(var h = 0; h < height; h++)
	{
		for(var w = 0; w < width; w++)
		{
			
			var roomGrid = arrayWithRooms[w,h];
			//changes heights to fill smoothly
			previousRoomLeaveWidth = 0;
			previousRoomLeaveHeight = 0;
			for(var prvh = 0; prvh < h; prvh++)
			{
				previousRoomLeaveHeight += ds_grid_height(arrayWithRooms[w,prvh]);
			}
			for(var prvw = 0; prvw < w; prvw++)
			{
				previousRoomLeaveWidth += ds_grid_width(arrayWithRooms[prvw,h]);
			}

			//get each individual square
			w2 = 0;
			for(var w1 = previousRoomLeaveWidth; w1 < ds_grid_width(roomGrid) + previousRoomLeaveWidth; w1++)
			{
				h2 = 0;
				for(var h1 = previousRoomLeaveHeight; h1 < ds_grid_height(roomGrid) + previousRoomLeaveHeight; h1++)
				{
					global.grid[# w1,h1] = roomGrid[# w2,h2];
					h2++;
				}
				w2++;
			}
		}
		
		
	}
	
	
	
	//print walls and floor and doors
	for(h = 0; h < ds_grid_height(global.grid); h++)
	{
		for(w = 0; w < ds_grid_width(global.grid); w++)
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
			
		}
	}
	
		//set up above grid
	ds_grid_resize(global.gridOrg, ds_grid_width(global.grid), ds_grid_height(global.grid))
	
	for(var i = 0; i < ds_grid_width(global.grid); i++)
	{
		for(var j = 0; j < ds_grid_height(global.grid); j++)
		{
			global.gridOrg[# i, j] = 0;
		}
	}
	
	
	//print out boxes and potions
	var maxLadders = 3;
	var ladderCount = 0;
	var mandLadder = 0;
	for(h = 0; h < ds_grid_height(global.grid); h++)
	{
		for(w = 0; w < ds_grid_width(global.grid); w++)
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
			var rand = irandom_range(1,400);
			if(global.grid[# w,h] == 0)
			{
				mandLadder ++;
			}
			
			//add possible spawn
			if(global.grid[# w,h] == 0 && left != -1 && right != -1 && down != -1 && up != -1 && left2 != -1 && right2 != -1 && down2 != -1 && up2 != -1 && (ladderCount < maxLadders && (rand == 11 || mandLadder == 300)))
			{
				instance_create_layer((w * 32) + (room_width div 4), (h * 32) + (room_height div 4), "Instances_Objects", obj_ladder);
				global.grid[# w,h] = 9;
				 ladderCount ++;
			}
			else if(global.grid[# w,h] == 0 && rand <= 8 && left != -1 && right != -1 && down != -1 && up != -1 && left2 != -1 && right2 != -1 && down2 != -1 && up2 != -1 && left != -2 && right != -2 && up != -2 && down != -2)
			{
				instance_create_layer((w * 32) + (room_width div 4), (h * 32) + (room_height div 4), "Instances_Objects", obj_box1);
				global.grid[# w,h] = 3;
			}
			//potions
			else if(global.grid[# w,h] == 0 && rand <= 10 && left != -1 && right != -1 && down != -1 && up != -1 && left2 != -1 && right2 != -1 && down2 != -1 && up2 != -1 && left != -2 && right != -2 && up != -2 && down != -2)
			{
				instance_create_layer((w * 32) + (room_width div 4), (h * 32) + (room_height div 4), "Instances_Objects", obj_potion1);
				global.gridOrg[# w,h] = 2;
			}
			
		}
	}
	


	
	
	
	//set and print player
	var possibleSpawns = array_create(0);
	for(h = 0; h < ds_grid_height(global.grid); h++)
	{
		for(w = 0; w < ds_grid_width(global.grid); w++)
		{
			
			//add possible spawn
			if(global.grid[# w,h] == 0 && global.grid[# w,h] != 2)
			{
				array_push(possibleSpawns, string(w) + " " + string(h));
			}
			
		}
	}
	var indexofPlayer = irandom_range(0, array_length(possibleSpawns) - 1)
	
	var wPos = string_copy(string(array_get(possibleSpawns, indexofPlayer)), 1, string_last_pos(" ", string(array_get(possibleSpawns, indexofPlayer))) - 1);
	var hPos = string_copy(string(array_get(possibleSpawns, indexofPlayer)),  string_last_pos(" ", string(array_get(possibleSpawns, indexofPlayer))) + 1, string_length(string(array_get(possibleSpawns, indexofPlayer))));
	show_debug_message(string(wPos) + " " + string(hPos));
	
	instance_create_layer((real(wPos) * 32) + (room_width div 4), (real(hPos) * 32) + (room_height div 4), "Instances_player", obj_player);
	instance_create_layer((real(wPos) * 32) + (room_width div 4) - 32, (real(hPos) * 32) + (room_height div 4), "Instances_player", obj_selection);
	global.gridOrg[# wPos,hPos] = 4;
	
	
	
	//add enemies
	for(h = 0; h < ds_grid_height(global.grid); h++)
	{
		for(w = 0; w < ds_grid_width(global.grid); w++)
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
			var rand = irandom_range(1,200);
			
			//add possible spawn
			if(global.gridOrg[# w,h] != 2 && global.gridOrg[# w,h] != 4 && global.grid[# w,h] == 0 && rand == 1 && left3 != 4 && right3 != 4 && down3 != 4 && up3 != 4 && left4 != 4 && right4 != 4 && down4 != 4 && up4 != 4 && left != -1 && right != -1 && down != -1 && up != -1 && left2 != -1 && right2 != -1 && down2 != -1 && up2 != -1)
			{
				instance_create_layer((w * 32) + (room_width div 4), (h * 32) + (room_height div 4), "Instances_Enemies", obj_enemy1);
				global.gridOrg[# w,h] = 5;
			}
			
		}
	}
	
	

	//add background
	instance_create_layer(0, 0, "Instances_Background", obj_background);
	
	//change fog initially
	change_fog();

	//for printing grid
	var gridString = "";
	for(var i = 0; i < global.grid_height; i++)
	{
		for(var j = 0; j < global.grid_width; j++)
		{
			gridString += string(string(global.grid[# j, i]) + " ");
		}
		gridString += "\n";
	}
	
	show_debug_message(gridString);
}
