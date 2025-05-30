window_set_fullscreen(true)
//randomize
randomize(); 

	//globals
	global.override = false;
	global.lockChgDir = false;
	global.turn = 0;
	global.enemyCount = 0;
	global.xdistance = 0;
	global.ydistance = -32;
	global.gridOrg = ds_grid_create(0, 0);
	global.gridPow = ds_grid_create(0,0);
	global.activeItem = 1;
	global.arrowCount = 0;
	global.arrowCount2 = 0;
	global.arrowCount3 = 0;
	global.potionCount1 = 0;
	global.potionCount2 = 0;
	global.levelCount = 1;
	global.consecutive = 0;
	global.keyCount = 0;
	global.damage = 0;
	global.activeWeapon = "sword1";
	global.crit = 0;
	global.armor1Count = 0;
	global.armor2Count = 0;
	global.armor3Count = 0;
	global.armor4Count = 0;
	global.activeArmor = undefined;
	
	//items
	global.sword1Count = 0;
	global.sword2Count = 0;
	global.sword3Count = 0;
	global.sword4Count = 0;
	
	global.ring1Count = 0;
	global.ring2Count = 0;
	global.ring3Count = 0;
	global.ring4Count = 0;
	global.ring5Count = 0;
	global.activeRing1 = undefined;
	global.activeRing2 = undefined;
	global.death = false;
	global.pause = false;
	
	global.inventory = ds_list_create();
	if(!global.mute)
	{
						//audio_play_sound(snd_underTone,0,true);
	}

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

if(room == rm_level1)
{
	//create room and its contents
	create_rooms(irandom_range(2,3),irandom_range(2,3));
}
else if(room == rm_tutorialRoom)
{
	global.grid = ds_grid_create(25, 25);
	global.grid_width = 45;  // Number of cells in the grid's width
	global.grid_height = 35; // Number of cells in the grid's height
	ds_grid_clear(global.grid, 10);
	for(var w1 = 0; w1 < ds_grid_width(global.grid); w1++)
			{
				for(var h1 = 0; h1 < ds_grid_height(global.grid); h1++)
				{
					//set borders to 1 (walls/no-walkables)
					if(w1 <= 5 || h1 <= 5)
					{
						global.grid[# w1, h1] = 0;
					}
					if(w1 == 0 || h1 == 0 || (w1 == 5 && h1 > 5) || (h1 == 5 && w1 >= 5) || (w1 == ds_grid_width(global.grid) - 1 && h1 <= 5) || (h1 == ds_grid_height(global.grid) - 1 && w1 <= 5))
					{
						global.grid[# w1,h1] = -2;
					}
					if(w1 <= 4 && h1 == 6)
					{
						global.grid[# w1,h1] = -2;
					}
					if(w1 == 3 && h1 == 6)
					{
						global.grid[# w1, h1] = -1;
					}
					if(w1 <= 5 && h1 == 16)
					{
						global.grid[# w1,h1] = -2;
					}
					if((w1 == 6 || w1 == 14) && h1 <= 4)
					{
						global.grid[# w1,h1] = -2;
					}
					if((w1 == 7 || w1 == 15) && h1 <= 4)
					{
						global.grid[# w1,h1] = -2;
					}
					if((w1 == 6 || w1 == 7) && h1 == 2)
					{
						global.grid[# w1, h1] = -1;
					}
					if((w1 == 14 || w1 == 15) && h1 == 2)
					{
						global.grid[# w1, h1] = -1;
					}
					if(h1 == 16 && w1 == 3)
					{
						global.grid[# w1, h1] = -1;
					}


					
				}
			}

	tutorial_room();
}


