//randomize
randomize(); 

//globals
global.turn = 0;
global.enemyCount = 0;
global.xdistance = -32;
global.ydistance = 0;
global.gridOrg = ds_grid_create(0, 0);
global.gridPow = ds_grid_create(0,0);
global.arrowCount = 3;

// Create a reservation grid (same size as global.gridOrg)
global.reservationGrid = ds_grid_create(ds_grid_width(global.gridOrg), ds_grid_height(global.gridOrg));
ds_grid_clear(global.reservationGrid, 0);

//healthbar
instance_create_layer(0, 0, "Instances_Global", obj_healthBar); //add wall

// Grid sizes
global.grid_width = room_width div 64;  // Number of cells in the grid's width
global.grid_height = room_height div 64; // Number of cells in the grid's height
global.tile_size = 32;   // The size of each cell 32x32

// Create a grid to represent walkable (0) and non-walkable (1) areas
global.grid = ds_grid_create(global.grid_width, global.grid_height);

global.gridRes = ds_grid_create(0,0);

// fill the grid with walkable cells initially
for (var i = 0; i < global.grid_width; i++) {
    for (var j = 0; j < global.grid_height; j++) {
        global.grid[# i, j] = 10; // set empty space outside
    }
}


//create room and its contents
create_rooms(irandom_range(2,3),irandom_range(2,3));


