if(destroy)
{
	if(image_index == 1)
	{
		var slash = instance_create_layer(x + 16, y + 16, "Instances_Global", obj_slashEffect);
		slash.objectToFollow = id;
	}
	if(image_index >= 4)
	{
		stopDestroying = true;
		destroy = false;
		image_index = 4;
		global.grid[# ((x - (room_width div 4)) div 32), ((y - (room_height div 4)) div 32)] = 0;
		var rand= irandom_range(1,2);
		if(rand == 1)
		{
			instance_create_layer(x,y,"Instances_Enemies", obj_potion2);
			global.gridPow[# ((x - (room_width div 4)) div 32), ((y - (room_height div 4)) div 32)] = 7;
		}
		else if(rand == 2)
		{
			instance_create_layer(x + 16,y + 16,"Instances_Enemies", obj_arrow);
			global.gridPow[# ((x - (room_width div 4)) div 32), ((y - (room_height div 4)) div 32)] = 6;
		}
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