if(moveCounter < global.turn && global.gridOrg[# w,h] == 4)
{
	canCheck = true;
}

if(canCheck && (global.gridOrg[# w,h] == 5 || global.gridOrg[# w,h] == 4))
{
	attack = true;
	canCheck = false;
}




if(attack == true)
{
	var instances = ds_list_create();
	var n = collision_point_list(x + 16, y + 16, obj_enemy1, false, true, instances, false);
	var n = collision_point_list(x + 16, y + 16, obj_enemy1Elite, false, true, instances, false);
	var n = collision_point_list(x + 16, y + 16, obj_enemy2Elite, false, true, instances, false);
	var n = collision_point_list(x + 16, y + 16, obj_enemy2, false, true, instances, false);
	var n = collision_point_list(x + 16, y + 16, obj_enemy3, false, true, instances, false);
	var i = 0;
	repeat ds_list_size(instances)
	{
		instances[| i].hp -= 15;
		i++;
	}
	ds_list_destroy(instances);
	
	if(global.gridOrg[# w,h] == 4)
	{
		
		global.hp -= 15;
		i++;
	}
	attack = false;
	animation = true;
}

if(animation)
{
	if(image_index >= 3)
	{
		animation = false;
	}
}
else
{
	image_index = 0;
}

if(moveCounter < global.turn && global.gridOrg[# w,h] != 4)
{
	canCheck = true;
}


moveCounter = global.turn;
