if(collision_enabled)
{
	if(name == "arrow")
	{
		global.activeItem = undefined;
		array_set(obj_ui.spotsEquipped, 4, 0);
		for(var i = 0; i < global.arrowCount; i++)
		{
			ds_list_add(global.inventory, "arrow");
		}
	}
	else if(name == "arrow2")
	{
		global.activeItem = undefined;
		array_set(obj_ui.spotsEquipped, 4, 0);
		for(var i = 0; i < global.arrowCount2; i++)
		{
			ds_list_add(global.inventory, "arrow2");
		}
	}
	else if(name == "arrow3")
	{
		global.activeItem = undefined;
		array_set(obj_ui.spotsEquipped, 4, 0);
		for(var i = 0; i < global.arrowCount3; i++)
		{
			ds_list_add(global.inventory, "arrow3");
		}
	}
	else if(name == "sword1")
	{
		global.activeWeapon = undefined;
		array_set(obj_ui.spotsEquipped, 2, 0);
		for(var i = 0; i < global.sword1Count; i++)
		{
			ds_list_add(global.inventory, "sword1");
		}
	}
	else if(name == "sword2")
	{
		global.activeWeapon = undefined;
		array_set(obj_ui.spotsEquipped, 2, 0);
		for(var i = 0; i < global.sword2Count; i++)
		{
			ds_list_add(global.inventory, "sword2");
		}
	}
	else if(name == "sword3")
	{
		global.activeWeapon = undefined;
		array_set(obj_ui.spotsEquipped, 2, 0);
		for(var i = 0; i < global.sword3Count; i++)
		{
			ds_list_add(global.inventory, "sword3");
		}
	}
	else if(name == "sword4")
	{
		global.activeWeapon = undefined;
		array_set(obj_ui.spotsEquipped, 2, 0);
		for(var i = 0; i < global.sword4Count; i++)
		{
			ds_list_add(global.inventory, "sword4");
		}
	}
	else if(name == "armor1")
	{
		global.activeArmor = undefined;
		array_set(obj_ui.spotsEquipped, 3, 0);
		for(var i = 0; i < global.armor1Count; i++)
		{
			ds_list_add(global.inventory, "armor1");
		}
	}
	else if(name == "armor2")
	{
		global.activeArmor = undefined;
		array_set(obj_ui.spotsEquipped, 3, 0);
		for(var i = 0; i < global.armor2Count; i++)
		{
			ds_list_add(global.inventory, "armor2");
		}
	}
	else if(name == "armor3")
	{
		global.activeArmor = undefined;
		array_set(obj_ui.spotsEquipped, 3, 0);
		for(var i = 0; i < global.armor3Count; i++)
		{
			ds_list_add(global.inventory, "armor3");
		}
	}
	else if(name == "armor4")
	{
		global.activeArmor = undefined;
		array_set(obj_ui.spotsEquipped, 3, 0);
		for(var i = 0; i < global.armor4Count; i++)
		{
			ds_list_add(global.inventory, "armor4");
		}
	}
	instance_destroy(id, false);
}


