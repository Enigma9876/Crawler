//movement
if(keyboard_check_pressed(vk_left))
{
	if (global.grid[# x div 64 - 1, y div 64] == 0)
	{
		x -= distance;
		if(x != xprevious2 || y != yprevious2)
		{
			global.grid[# xprevious2 div 64 div 64, yprevious2 div 64] = 0;
			global.grid[# x div 64 div 64, y div 64] = 1;
		}
		global.turn += 1;
	}
}
else if(keyboard_check_pressed(vk_right))
{
	if (global.grid[# x div 64 + 1, y div 64] == 0)
	{
		x += distance;
		if(x != xprevious2 || y != yprevious2)
		{
			global.grid[# xprevious2 div 64 div 64, yprevious2 div 64] = 0;
			global.grid[# x div 64 div 64, y div 64] = 1;
		}
		global.turn += 1;
	}
}
else if(keyboard_check_pressed(vk_down))
{
	if (global.grid[# x div 64, y div 64 + 1] == 0)
	{
		y += distance;
		if(x != xprevious2 || y != yprevious2)
		{
			global.grid[# xprevious2 div 64 div 64, yprevious2 div 64] = 0;
			global.grid[# x div 64 div 64, y div 64] = 1;
		}
		global.turn += 1;
	}
}
else if(keyboard_check_pressed(vk_up))
{
	if (global.grid[# x div 64, y div 64 - 1] == 0)
	{
		y -= distance;
		if(x != xprevious2 || y != yprevious2)
		{
			global.grid[# xprevious2 div 64 div 64, yprevious2 div 64] = 0;
			global.grid[# x div 64 div 64, y div 64] = 1;
		}
		global.turn += 1;
	}
}

if(x != xprevious2 || y != yprevious2)
{
	xprevious2 = x;
	yprevious2 = y;
}

