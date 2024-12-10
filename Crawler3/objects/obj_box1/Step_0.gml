if(destroy)
{
	if(image_index >= 4)
	{
		stopDestroying = true;
		image_index = 4;
		global.grid[(x - (room_width div 4)) div 32, (y - (room_height div 4)) div 32] = 0;
	}
}
else if(stopDestroying)
{
	image_index = 4;
}
else
{
	image_index = 0;
}