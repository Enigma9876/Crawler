if(index_x != undefined && index_y != undefined && collision_enabled)
{
	if(obj_ui.spotsTaken[# index_x,index_y] != 0)
	{
		if(index_x == 0)
			var display = instance_create_layer(x + 65,y + 60, "Instances_signs", obj_display);
		else if(index_x == 1)
			var display = instance_create_layer(x + 45,y + 60, "Instances_signs", obj_display);
		else if(index_x == 2)
			var display = instance_create_layer(x + 25,y + 60, "Instances_signs", obj_display);
		else if(index_x == 3)
			var display = instance_create_layer(x + 5,y + 60, "Instances_signs", obj_display);
		else if(index_x == 4)
			var display = instance_create_layer(x - 20,y + 60, "Instances_signs", obj_display);
		display.image_xscale = 5;
		display.image_yscale = 5;
		display.name = obj_ui.spotsTaken[# index_x,index_y];
	}
}
else if(index_x == 4 && index_y == undefined && collision_enabled && global.activeItem != undefined)
{
	var display = instance_create_layer(x + 20,y - 40, "Instances_signs", obj_display);
	display.image_xscale = 5;
	display.image_yscale = 5;
	display.name = string(array_get(obj_ui.spotsEquipped, 4)) + " eq";
}
else if(index_x == 2 && index_y == undefined && collision_enabled && global.activeWeapon != undefined)
{
	var display = instance_create_layer(x,y - 30, "Instances_signs", obj_display);
	display.image_xscale = 5;
	display.image_yscale = 5;
	display.name = string(array_get(obj_ui.spotsEquipped, 2)) + " eq";
}
else if(index_x == 3 && index_y == undefined && collision_enabled && global.activeArmor != undefined)
{
	var display = instance_create_layer(x,y - 30, "Instances_signs", obj_display);
	display.image_xscale = 5;
	display.image_yscale = 5;
	display.name = string(array_get(obj_ui.spotsEquipped, 3)) + " eq";
}
