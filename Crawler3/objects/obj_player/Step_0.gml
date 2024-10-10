//movement
if(keyboard_check_pressed(vk_left))
{
	if (global.grid_contents[(y div 64)][x div 64 - 1] == "null")
	{
		x -= distance;
		if(x != xprevious2 || y != yprevious2)
		{
			array_set(global.grid_contents[yprevious2 div 64], xprevious2 div 64, "null");
			array_set(global.grid_contents[y div 64], x div 64, "player");
		}
		global.turn += 1;
	}
}
else if(keyboard_check_pressed(vk_right))
{
	if (global.grid_contents[y div 64][x div 64 + 1] == "null")
	{
		x += distance;
		if(x != xprevious2 || y != yprevious2)
		{
			array_set(global.grid_contents[yprevious2 div 64], xprevious2 div 64, "null");
			array_set(global.grid_contents[y div 64], x div 64, "player");
		}
		global.turn += 1;
	}
}
else if(keyboard_check_pressed(vk_down))
{
	if (global.grid_contents[y div 64 + 1][x div 64] == "null")
	{
		y += distance;
		if(x != xprevious2 || y != yprevious2)
		{
			show_debug_message(string(xprevious2) + " " + string(x));
			array_set(global.grid_contents[yprevious2 div 64], xprevious2 div 64, "null");
			array_set(global.grid_contents[y div 64], x div 64, "player");
		}
		global.turn += 1;
	}
}
else if(keyboard_check_pressed(vk_up))
{
	if (global.grid_contents[y div 64 - 1][x div 64] == "null")
	{
		y -= distance;
		if(x != xprevious2 || y != yprevious2)
		{
			show_debug_message(string(xprevious2) + " " + string(x));
			array_set(global.grid_contents[yprevious2 div 64], xprevious2 div 64, "null");
			array_set(global.grid_contents[y div 64], x div 64, "player");
		}
		global.turn += 1;
	}
}

if(x != xprevious2 || y != yprevious2)
{
	xprevious2 = x;
	yprevious2 = y;
}

