//randomize
randomize(); 

//globals
global.turn = 0;

//healthbar
instance_create_layer(0, 0, "Instances_Global", obj_healthBar); //add wall

// Grid sizes
global.grid_width = room_width div 64;  // Number of cells in the grid's width
global.grid_height = room_height div 64; // Number of cells in the grid's height
global.tile_size = 32;   // The size of each cell 32x32

// Create a grid to represent walkable (0) and non-walkable (1) areas
global.grid = ds_grid_create(global.grid_width, global.grid_height);

// fill the grid with walkable cells initially
for (var i = 0; i < global.grid_width; i++) {
    for (var j = 0; j < global.grid_height; j++) {
        global.grid[# i, j] = 3; // all walkable
    }
}


//spawn walls (intitial border)
create_rooms(5,4);


//enemy 1
spawn_enemy1 = true;
spawn_enemy1_amount = 0;

if (spawn_enemy1)
{
    for (i = 0; i < spawn_enemy1_amount; i++)
    {
        var free_x, free_y;
        while(true)
        {
            free_x = irandom(room_width div 32 - 1);
            free_y = irandom(room_height div 32 - 1);
            if (global.grid[# free_x, free_y] == 0) // Check if the spot is free
			{
				global.grid[# free_x, free_y] = 1; // set non-walkable
				instance_create_layer((free_x * 32) + (room_width div 4), (free_y * 32) + (room_height div 4), "Instances_Objects", obj_enemy1); //add player to scene
				break;
			}
        }
    }
}

