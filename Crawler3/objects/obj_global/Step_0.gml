var num = 0;
for(var h = 0; h < array_length(global.grid_contents); h++)
{
	for(var w = 0; w < array_length(global.grid_contents[0]); w++)
	{
		show_debug_message(global.grid_contents[h][w]);
	}
}
show_debug_message(num);
