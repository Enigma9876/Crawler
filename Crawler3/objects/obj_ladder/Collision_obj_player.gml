if(room == rm_tutorialRoom)
{
	room = rm_main;
}
else
{
	global.levelCount++
	global.gridOrg = ds_grid_create(0, 0);
	global.gridPow = ds_grid_create(0,0);
	global.enemyCount = 0;
				
	// Create a reservation grid (same size as global.gridOrg)
	global.reservationGrid = ds_grid_create(ds_grid_width(global.gridOrg), ds_grid_height(global.gridOrg));
					ds_grid_clear(global.reservationGrid, 0);
				
					// Create a grid to represent walkable (0) and non-walkable (1) areas
					global.grid = ds_grid_create(global.grid_width, global.grid_height);

					global.gridRes = ds_grid_create(0,0);

					// fill the grid with walkable cells initially
					for (var i = 0; i < global.grid_width; i++) {
					    for (var j = 0; j < global.grid_height; j++) {
					        global.grid[# i, j] = 10; // set empty space outside
					    }
					}
				
					destroy_room();
}