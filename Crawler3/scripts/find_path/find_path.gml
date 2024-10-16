function find_path(start_x, start_y, end_x, end_y)
{
    // Priority queue for open nodes (nodes we need to explore)
    var open_list = ds_priority_create();
    var closed_list = ds_list_create();
    
    // Map to track if a node is in the open list (to replace ds_priority_find_index)
    var open_list_map = ds_map_create();
    
    // Dictionary to store the cost and parent of each node
    var g_score = ds_map_create();
    var f_score = ds_map_create();
    var came_from = ds_map_create();
    
    // Initialize the start node
    var start = string(start_x) + "_" + string(start_y);
    g_score[? start] = 0;
    f_score[? start] = manhattan_distance(start_x, start_y, end_x, end_y);
    
    ds_priority_add(open_list, start, f_score[? start]);
    ds_map_add(open_list_map, start, true); // Add to the map to track
    
    // A* algorithm
    while (!ds_priority_empty(open_list)) {
        var current = ds_priority_delete_min(open_list);
        ds_map_delete(open_list_map, current); // Remove from the map when removed from the open list
        
        // Get current coordinates
        var current_x = real(string_copy(current, 1, string_pos("_", current)-1));
        var current_y = real(string_copy(current, string_pos("_", current) + 1, string_length(current)));
        
        // If we reached the goal
        if (current_x == end_x && current_y == end_y) {
            reconstruct_path(came_from, current);
            break;
        }
        
        // Add current node to the closed list
        ds_list_add(closed_list, current);
        
        // Get neighbors (up, down, left, right)
        var neighbors = get_neighbors(current_x, current_y);
        
        for (var i = 0; i < array_length(neighbors); i++) {
            var neighbor = neighbors[i];
            var neighbor_x = neighbor[0];
            var neighbor_y = neighbor[1];
            var neighbor_str = string(neighbor_x) + "_" + string(neighbor_y);
            
            // Skip if the neighbor is non-walkable or already in closed list
            if (global.grid[# neighbor_x, neighbor_y] == 1 || ds_list_find_index(closed_list, neighbor_str) != -1) {
                continue;
            }
            
            // Calculate tentative g_score for neighbor
            var tentative_g_score = g_score[? current] + 1;
            
            if (!ds_map_exists(g_score, neighbor_str) || tentative_g_score < g_score[? neighbor_str]) {
                // This path to the neighbor is better than previous paths, so record it
                came_from[? neighbor_str] = current;
                g_score[? neighbor_str] = tentative_g_score;
                f_score[? neighbor_str] = tentative_g_score + manhattan_distance(neighbor_x, neighbor_y, end_x, end_y);
                
                // Check if the neighbor is not already in the open list
                if (!ds_map_exists(open_list_map, neighbor_str)) {
                    ds_priority_add(open_list, neighbor_str, f_score[? neighbor_str]);
                    ds_map_add(open_list_map, neighbor_str, true); // Add to map to track
                }
            }
        }
    }
    
    // Cleanup
    ds_priority_destroy(open_list);
    ds_list_destroy(closed_list);
    ds_map_destroy(g_score);
    ds_map_destroy(f_score);
    ds_map_destroy(came_from);
    ds_map_destroy(open_list_map); // Clean up the map
}

// Manhattan distance heuristic
function manhattan_distance(x1, y1, x2, y2) {
    return abs(x1 - x2) + abs(y1 - y2);
}

// Get neighboring cells (up, down, left, right)
function get_neighbors(x, y) {
    var neighbors = [];
    
    if (x > 0) array_push(neighbors, [x-1, y]);        // Left
    if (x < global.grid_width-1) array_push(neighbors, [x+1, y]); // Right
    if (y > 0) array_push(neighbors, [x, y-1]);        // Up
    if (y < global.grid_height-1) array_push(neighbors, [x, y+1]); // Down
    
    return neighbors;
}

// Reconstruct the path from the 'came_from' map
function reconstruct_path(came_from, current) {
    var total_path = [current];
    while (ds_map_exists(came_from, current)) {
        current = came_from[? current];
        array_push(total_path, current);
    }
    
	show_debug_message(string(total_path));
    return array_reverse(total_path);
}