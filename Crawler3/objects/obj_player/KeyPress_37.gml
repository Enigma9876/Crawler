if (global.grid_contents[(y div 64)][x div 64 - 1] == "null")
{
	x -= distance;
	global.turn += 1;
}
