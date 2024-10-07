if(xprevious != x || yprevious != y)
{
	array_set(global.grid_contents[yprevious div 64], xprevious div 64, "null"); 
	array_set(global.grid_contents[y div 64], x div 64, "player");
}
