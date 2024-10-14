//randomize
randomize(); 

//globals
global.turn = 0;
global.grid_contents = array_create((room_height) div 64);

//make the list
for(var w = 0; w < array_length(global.grid_contents); w++)
{
	global.grid_contents[w] = array_create((room_width) div 64);
}

for(var h = 0; h < array_length(global.grid_contents); h++)
{
	for(var w = 0; w < array_length(global.grid_contents[0]); w++)
	{
		global.grid_contents[h][w] = "null";
	}
}

//spawn walls (intitial border)
for(var h = 0; h < array_length(global.grid_contents); h++)
{
	for(var w = 0; w < array_length(global.grid_contents[0]); w++)
	{
		if((h == 0 || h == array_length(global.grid_contents) - 1) || (w == 0 || w == array_length(global.grid_contents[0]) - 1))
		{
			instance_create_layer(w * 64 + 32, h * 64 + 32, "Instances_Objects", obj_wall);
			global.grid_contents[h][w] = "wall";
		}
		
		//test only
		if(w != 3 && (h == 10 && w < 10) || (h < 11 && w == 10) && h != 6)
		{
			instance_create_layer(w * 64 + 32, h * 64 + 32, "Instances_Objects", obj_wall);
			global.grid_contents[h][w] = "wall";
		}
	}
}

//random walls
var numWalls = 0;
var free_x, free_y;
while(numWalls > 0)
{
	free_x = irandom(room_width div 64 - 1);
	free_y = irandom(room_height div 64 - 1);
	if (global.grid_contents[free_y][free_x] == "null") // Check if the spot is free
	{
		numWalls -= 1;
		num_width = free_x * 64 + 32;
		num_height = free_y * 64 + 32;

		instance_create_layer(num_width, num_height, "Instances_Objects", obj_wall);
		global.grid_contents[free_y][free_x] = "wall";
		if(numWalls <= 0)
		{
			break;
		}
	}
}
 

//player spawn
var free_x, free_y;
while(true)
{
	free_x = irandom(room_width div 64 - 1);
	free_y = irandom(room_height div 64 - 1);
	if (global.grid_contents[free_y][free_x] == "null") // Check if the spot is free
	{
		break;
	}
}

num_width = free_x * 64 + 32;
num_height = free_y * 64 + 32;

instance_create_layer(num_width, num_height, "Instances_Objects", obj_player);
global.grid_contents[free_y][free_x] = "player";


//enemy 1
spawn_enemy1 = true;
spawn_enemy1_amount = 1;

if (spawn_enemy1)
{
    for (i = 0; i < spawn_enemy1_amount; i++)
    {
        var free_x, free_y;
        while(true)
        {
            free_x = irandom(room_width div 64 - 1);
            free_y = irandom(room_height div 64 - 1);
            if (global.grid_contents[free_y][free_x] == "null") // Check if the spot is free
			{
				break;
			}
        }

        // Convert grid coordinates to actual room positions (64x64 grid cells)
        num_width = free_x * 64 + 32;
        num_height = free_y * 64 + 32;

        // Spawn enemy at this position
        instance_create_layer(num_width, num_height, "Instances_Objects", obj_enemy1);
		global.grid_contents[free_y][free_x] = "enemy";
    }
}