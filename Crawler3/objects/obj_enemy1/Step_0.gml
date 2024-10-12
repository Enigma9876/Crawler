var pos_in_list_x = x;
var pos_in_list_y = y;
if(global.turn != last_turn_num)
{
    //flags for finding the path
    var foundpath = false;
    
    //paths
    var path_x = ds_list_create();
    var path_y = ds_list_create();
    
    var current_x = x div 64;
    var current_y = y div 64;
    
    //pathfinding
    while(!foundpath)
    {
        var target_x = obj_player.x div 64;
        var target_y = obj_player.y div 64;

        // Move along X-axis
        if (current_x < target_x && global.grid_contents[current_y][current_x + 1] == "null") {
            ds_list_add(path_x, 1);
            current_x += 1;
        } else if (current_x > target_x && global.grid_contents[current_y][current_x - 1] == "null") {
            ds_list_add(path_x, -1);
            current_x -= 1;
        } else {
            ds_list_add(path_x, 0); // No move on the X-axis
        }

        // Move along Y-axis
        if (current_y < target_y && global.grid_contents[current_y + 1][current_x] == "null") {
            ds_list_add(path_y, 1);
            current_y += 1;
        } else if (current_y > target_y && global.grid_contents[current_y - 1][current_x] == "null") {
            ds_list_add(path_y, -1);
            current_y -= 1;
        } else {
            ds_list_add(path_y, 0); // No move on the Y-axis
        }

        // Check if the enemy reached the player's position
        if (current_x == target_x && current_y == target_y) 
		{
            foundpath = true;
        } 
		else if (ds_list_size(path_x) > 100 || ds_list_size(path_y) > 100) 
		{
            // Prevent potential infinite loop (optional)
            foundpath = true;
			//random movement if there is a free space and player is not within 1
        }
    }

    // Apply the movement based on path
    if(ds_list_size(path_x) != 0 && ds_list_find_value(path_x, 0) != 0) {
        x += ds_list_find_value(path_x, 0) * 64;
    }
    
    else if(ds_list_size(path_y) != 0 && ds_list_find_value(path_y, 0) != 0) {
        y += ds_list_find_value(path_y, 0) * 64;
    }

    // Clean up the lists
    ds_list_destroy(path_x);
    ds_list_destroy(path_y);
}

//updates grid
if(xprevious != x || yprevious != y)
{
	array_set(global.grid_contents[yprevious div 64], xprevious div 64, "null"); 
	array_set(global.grid_contents[y div 64], x div 64, "enemy");
}
last_turn_num = global.turn;
