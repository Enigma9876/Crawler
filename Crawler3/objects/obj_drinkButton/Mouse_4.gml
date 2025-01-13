if(potionType == "potion" && collision_enabled && global.canMove)
{
	global.hp += 25;
	global.potionCount1--;
	var index = ds_list_find_index(global.inventory, "potion");
	
	if (index != -1)
	{
		ds_list_delete(global.inventory, index);
	}
	global.turn ++;
	instance_destroy(id, false);
}
else if(potionType == "potion2" && collision_enabled && global.canMove)
{
	global.hp += 10;
	global.potionCount2--;
	var index = ds_list_find_index(global.inventory, "potion2");
	
	if (index != -1)
	{
		ds_list_delete(global.inventory, index);
	}
	global.turn ++;
	instance_destroy(id, false);
}


