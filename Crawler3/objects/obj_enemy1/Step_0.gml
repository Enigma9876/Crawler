var pos_in_list_x = x;
var pos_in_list_y = y;
if(global.turn != last_turn_num)
{
    //Copy seperate check grid 
	var grid = global.grid_contents;
	
	//current position in grid
	var current_position_x = x div 64;
	var current_position_y = y div 64;
	
	//get player position
	var player_position_x = obj_player.x div 64;
	var player_position_y = obj_player.y div 64;
	
	
	//add these to the loop for next time
	
	//direction values
	var null_left = false;
	var null_right = false;
	var null_up = false;
	var null_down = false;
	
	while(true)
	{
		//get which way to go
		
		//cost is better to go x
		if(abs(current_position_x - player_position_x) < abs(current_position_y - player_position_y))
		{
			//go right			
			if(current_position_x < player_position_x)
			{
				//check if its open
				if(grid[current_position_y][current_position_x + 1] != "null")
				{
					//update a path to that locaiton, stuff and restart the loop
				}
				else
				{
					//restart the loop and find a away to redo calculations
					
				}
			}
			
			//go left
			if(current_position_x > player_position_x)
			{
				//check if its open
				if(grid[current_position_y][current_position_x - 1] != "null")
				{
					//update a path to that locaiton and stuff
				}
				else
				{
					//restart the loop
				}
			}
		}
		
		//cost is better to go y
		if(abs(current_position_x - player_position_x) > abs(current_position_y - player_position_y))
		{
			//go up		
			if(current_position_y > player_position_y)
			{
				//check if its open
				if(grid[current_position_y - 1][current_position_x] != "null")
				{
					//update a path to that locaiton and stuff
				}
				else
				{
					//restart the loop
				}
			}
			
			//go down
			if(current_position_y < player_position_y)
			{
				//check if its open
				if(grid[current_position_y + 1][current_position_x] != "null")
				{
					//update a path to that locaiton and stuff
				}
				else
				{
					//restart the loop
				}
			}
			
		}
		
		//for breaking after path is decided
		else
		{
			
		}
	}
}

//updates grid
if(xprevious != x || yprevious != y)
{
	array_set(global.grid_contents[yprevious div 64], xprevious div 64, "null"); 
	array_set(global.grid_contents[y div 64], x div 64, "enemy");
}
last_turn_num = global.turn;
