var all_stopped = true;

with (all) 
{
    if (object_index != obj_selection && x != xprevious || y != yprevious) {
        all_stopped = false; 
		show_debug_message("Moving object: " + object_get_name(object_index) + " at position (" + string(x) + ", " + string(y) + ")");
        break; 
    }
	if (variable_instance_exists(id, "isIdle") && !isIdle)
	{
        all_stopped = false;
    }
}




//global.canMove = all_stopped;


if(all_stopped)
{
	global.consecutive += 1;
}
else
{
	global.consecutive = 0;
}
if(global.consecutive >= 2)
{
	global.canMove = true;
	//global.consecutive = 0;
}
else
{
	global.canMove = false;
}

if(global.override)
{
	global.canMove = false;
}



// Debug: Output the result to the console (optional)
/*if (global.canMove) {
    show_debug_message("All objects are stationary.");
} else {
    show_debug_message("Some objects are still moving.");
} */
