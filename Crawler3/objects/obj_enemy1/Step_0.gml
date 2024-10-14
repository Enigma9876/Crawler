//need to add system so if its not null it will choose another direction from current x and y




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
				if(grid[current_position_y][current_position_x + 1] == "null")
				{
					//update a path to that locaiton and stuff
				}
			}
			
			//go left
			else if(current_position_x > player_position_x)
			{
				//check if its open
				if(grid[current_position_y][current_position_x - 1] == "null")
				{
					//update a path to that locaiton and stuff
				}
			}
		}
		
		//cost is better to go y
		else if(abs(current_position_x - player_position_x) > abs(current_position_y - player_position_y))
		{
			//go up		
			if(current_position_y > player_position_y)
			{
				//check if its open
				if(grid[current_position_y - 1][current_position_x] == "null")
				{
					//update a path to that locaiton and stuff
				}
			}
			
			//go down
			else if(current_position_y < player_position_y)
			{
				//check if its open
				if(grid[current_position_y + 1][current_position_x] == "null")
				{
					//update a path to that locaiton and stuff
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
