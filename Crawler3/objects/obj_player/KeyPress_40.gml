if (global.grid_contents[y div 64 + 1][x div 64] == "null")
{
	y += distance;
	global.turn += 1;
}