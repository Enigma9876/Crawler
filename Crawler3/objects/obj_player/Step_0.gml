if((xprevious != x || yprevious != y))
{
	array_set(global.grid_contents[yprevious div 64], xprevious div 64, "null"); 
	array_set(global.grid_contents[y div 64], x div 64, "player");
}

//movement
if(keyboard_check_pressed(vk_left))
{
	if (global.grid_contents[(y div 64)][x div 64 - 1] == "null")
	{
		x -= distance;
		global.turn += 1;
	}
}
else if(keyboard_check_pressed(vk_right))
{
	if (global.grid_contents[y div 64][x div 64 + 1] == "null")
	{
		x += distance;
		global.turn += 1;
	}
}
else if(keyboard_check_pressed(vk_down))
{
	if (global.grid_contents[y div 64 + 1][x div 64] == "null")
	{
		y += distance;
		global.turn += 1;
	}
}
else if(keyboard_check_pressed(vk_up))
{
	if (global.grid_contents[y div 64 - 1][x div 64] == "null")
	{
		y -= distance;
		global.turn += 1;
	}
}

