//globals
global.turn = 0;
global.grid = mp_grid_create(0, 0, (room_width - 64) div 64, (room_height - 64) div 64, 64, 64);


//player spawn
var free_x, free_y;
while(true)
{
	free_x = irandom(room_width div 64 - 1);
	free_y = irandom(room_height div 64 - 1);
	if (mp_grid_get_cell(global.grid, free_x, free_y) == 0) // Check if the spot is free
	{
		break;
	}
}

num_width = free_x * 64 + 32;
num_height = free_y * 64 + 32;

instance_create_layer(num_width, num_height, "Instances_Characters", obj_player);




//enemy 1
spawn_enemy1 = true;
spawn_enemy1_amount = 1;

randomize();
if (spawn_enemy1)
{
    for (i = 0; i < spawn_enemy1_amount; i++)
    {
        var free_x, free_y;
        while(true)
        {
            free_x = irandom(room_width div 64 - 1);
            free_y = irandom(room_height div 64 - 1);
            if (mp_grid_get_cell(global.grid, free_x, free_y) == 0) // Check if the spot is free
            {
                break;
            }
        }

        // Convert grid coordinates to actual room positions (64x64 grid cells)
        num_width = free_x * 64 + 32;
        num_height = free_y * 64 + 32;

        // Spawn enemy at this position
        instance_create_layer(num_width, num_height, "Instances_Characters", obj_enemy1);
    }
}