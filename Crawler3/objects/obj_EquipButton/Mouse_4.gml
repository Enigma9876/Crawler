if(collision_enabled)
{
	//remove from inentory
	if(name == "arrow")
	{
		array_set(obj_ui.spotsEquipped, 4, 0);
		if(global.activeItem == "arrow2")
		{
			for(var i = 0; i < global.arrowCount2; i++)
			{
				ds_list_add(global.inventory, "arrow2");
			}
		}
		else if(global.activeItem == "arrow3")
		{
			for(var i = 0; i < global.arrowCount3; i++)
			{
				ds_list_add(global.inventory, "arrow3");
			}
		}
		global.activeItem = undefined;
		
		while(ds_list_find_index(global.inventory, "arrow") != -1)
		{
			var index = ds_list_find_index(global.inventory, "arrow");
	
			if (index != -1)
			{
				ds_list_delete(global.inventory, index);
			}
		}
		
		//add to euipped
		array_set(obj_ui.spotsEquipped,4, "arrow");
	
		
	}
	else if(name == "arrow2")
	{
		array_set(obj_ui.spotsEquipped, 4, 0);
		if(global.activeItem == "arrow")
		{
			for(var i = 0; i < global.arrowCount; i++)
			{
				ds_list_add(global.inventory, "arrow");
			}
		}
		else if(global.activeItem == "arrow3")
		{
			for(var i = 0; i < global.arrowCount3; i++)
			{
				ds_list_add(global.inventory, "arrow3");
			}
		}
		global.activeItem = undefined;
		
		
		while(ds_list_find_index(global.inventory, "arrow2") != -1)
		{
			var index = ds_list_find_index(global.inventory, "arrow2");
	
			if (index != -1)
			{
				ds_list_delete(global.inventory, index);
			}
		}
		
		//add to euipped
		array_set(obj_ui.spotsEquipped,4, "arrow2");
	
		
	}
	else if(name == "arrow3")
	{
		array_set(obj_ui.spotsEquipped, 4, 0);
		if(global.activeItem == "arrow")
		{
			for(var i = 0; i < global.arrowCount; i++)
			{
				ds_list_add(global.inventory, "arrow");
			}
		}
		else if(global.activeItem == "arrow2")
		{
			for(var i = 0; i < global.arrowCount2; i++)
			{
				ds_list_add(global.inventory, "arrow2");
			}
		}
		global.activeItem = undefined;
		
		
		while(ds_list_find_index(global.inventory, "arrow3") != -1)
		{
			var index = ds_list_find_index(global.inventory, "arrow3");
	
			if (index != -1)
			{
				ds_list_delete(global.inventory, index);
			}
		}
		
		//add to euipped
		array_set(obj_ui.spotsEquipped,4, "arrow3");
	
		
	}
	if(name == "sword1")
	{
		array_set(obj_ui.spotsEquipped, 2, 0);
		if(global.activeWeapon == "sword2")
		{
			for(var i = 0; i < global.sword2Count; i++)
			{
				ds_list_add(global.inventory, "sword2");
			}
		}
		else if(global.activeWeapon == "sword3")
		{
			for(var i = 0; i < global.sword3Count; i++)
			{
				ds_list_add(global.inventory, "sword3");
			}
		}
		else if(global.activeWeapon == "sword4")
		{
			for(var i = 0; i < global.sword4Count; i++)
			{
				ds_list_add(global.inventory, "sword4");
			}
		} 
		global.activeWeapon = undefined;
		
		while(ds_list_find_index(global.inventory, "sword1") != -1)
		{
			var index = ds_list_find_index(global.inventory, "sword1");
	
			if (index != -1)
			{
				ds_list_delete(global.inventory, index);
			}
		}
		
		//add to euipped
		array_set(obj_ui.spotsEquipped,2, "sword1");
	
	}
	if(name == "sword2")
	{
		array_set(obj_ui.spotsEquipped, 2, 0);
		if(global.activeWeapon == "sword1")
		{
			for(var i = 0; i < global.sword1Count; i++)
			{
				ds_list_add(global.inventory, "sword1");
			}
		}
		else if(global.activeWeapon == "sword3")
		{
			for(var i = 0; i < global.sword3Count; i++)
			{
				ds_list_add(global.inventory, "sword3");
			}
		}
		else if(global.activeWeapon == "sword4")
		{
			for(var i = 0; i < global.sword4Count; i++)
			{
				ds_list_add(global.inventory, "sword4");
			}
		} 
		global.activeWeapon = undefined;
		
		while(ds_list_find_index(global.inventory, "sword2") != -1)
		{
			var index = ds_list_find_index(global.inventory, "sword2");
	
			if (index != -1)
			{
				ds_list_delete(global.inventory, index);
			}
		}
		
		//add to euipped
		array_set(obj_ui.spotsEquipped,2, "sword2");
	
	}
	if(name == "sword3")
	{
		array_set(obj_ui.spotsEquipped, 2, 0);
		if(global.activeWeapon == "sword2")
		{
			for(var i = 0; i < global.sword2Count; i++)
			{
				ds_list_add(global.inventory, "sword2");
			}
		}
		else if(global.activeWeapon == "sword1")
		{
			for(var i = 0; i < global.sword1Count; i++)
			{
				ds_list_add(global.inventory, "sword1");
			}
		}
		else if(global.activeWeapon == "sword4")
		{
			for(var i = 0; i < global.sword4Count; i++)
			{
				ds_list_add(global.inventory, "sword4");
			}
		} 
		global.activeWeapon = undefined;
		
		while(ds_list_find_index(global.inventory, "sword3") != -1)
		{
			var index = ds_list_find_index(global.inventory, "sword3");
	
			if (index != -1)
			{
				ds_list_delete(global.inventory, index);
			}
		}
		
		//add to euipped
		array_set(obj_ui.spotsEquipped,2, "sword3");
	
	}
	if(name == "sword4")
	{
		show_debug_message("sword4");
		array_set(obj_ui.spotsEquipped, 2, 0);
		if(global.activeWeapon == "sword2")
		{
			for(var i = 0; i < global.sword2Count; i++)
			{
				ds_list_add(global.inventory, "sword2");
			}
		}
		else if(global.activeWeapon == "sword3")
		{
			for(var i = 0; i < global.sword3Count; i++)
			{
				ds_list_add(global.inventory, "sword3");
			}
		}
		else if(global.activeWeapon == "sword1")
		{
			for(var i = 0; i < global.sword1Count; i++)
			{
				ds_list_add(global.inventory, "sword1");
			}
		} 
		global.activeWeapon = undefined;
		
		while(ds_list_find_index(global.inventory, "sword4") != -1)
		{
			var index = ds_list_find_index(global.inventory, "sword4");
	
			if (index != -1)
			{
				ds_list_delete(global.inventory, index);
			}
		}
		
		//add to euipped
		array_set(obj_ui.spotsEquipped,2, "sword4");
	
	}
	if(name == "armor1")
	{
		array_set(obj_ui.spotsEquipped, 3, 0);
		if(global.activeArmor == "armor2")
		{
			for(var i = 0; i < global.armor2Count; i++)
			{
				ds_list_add(global.inventory, "armor2");
			}
		}
		else if(global.activeArmor == "armor3")
		{
			for(var i = 0; i < global.armor3Count; i++)
			{
				ds_list_add(global.inventory, "armor3");
			}
		}
		else if(global.activeArmor == "armor4")
		{
			for(var i = 0; i < global.armor4Count; i++)
			{
				ds_list_add(global.inventory, "armor4");
			}
		} 
		global.activeArmor = undefined;
		
		while(ds_list_find_index(global.inventory, "armor1") != -1)
		{
			var index = ds_list_find_index(global.inventory, "armor1");
	
			if (index != -1)
			{
				ds_list_delete(global.inventory, index);
			}
		}
		
		//add to euipped
		array_set(obj_ui.spotsEquipped,3, "armor1");
	
	}
	if(name == "armor2")
	{
		array_set(obj_ui.spotsEquipped, 3, 0);
		if(global.activeArmor == "armor1")
		{
			for(var i = 0; i < global.armor1Count; i++)
			{
				ds_list_add(global.inventory, "armor1");
			}
		}
		else if(global.activeArmor == "armor3")
		{
			for(var i = 0; i < global.armor3Count; i++)
			{
				ds_list_add(global.inventory, "armor3");
			}
		}
		else if(global.activeArmor == "armor4")
		{
			for(var i = 0; i < global.armor4Count; i++)
			{
				ds_list_add(global.inventory, "armor4");
			}
		} 
		global.activeArmor = undefined;
		
		while(ds_list_find_index(global.inventory, "armor2") != -1)
		{
			var index = ds_list_find_index(global.inventory, "armor2");
	
			if (index != -1)
			{
				ds_list_delete(global.inventory, index);
			}
		}
		
		//add to euipped
		array_set(obj_ui.spotsEquipped,3, "armor2");
	
	}
	if(name == "armor3")
	{
		array_set(obj_ui.spotsEquipped, 3, 0);
		if(global.activeArmor == "armor2")
		{
			for(var i = 0; i < global.armor2Count; i++)
			{
				ds_list_add(global.inventory, "armor2");
			}
		}
		else if(global.activeArmor == "armor1")
		{
			for(var i = 0; i < global.armor1Count; i++)
			{
				ds_list_add(global.inventory, "armor1");
			}
		}
		else if(global.activeArmor == "armor4")
		{
			for(var i = 0; i < global.armor4Count; i++)
			{
				ds_list_add(global.inventory, "armor4");
			}
		} 
		global.activeArmor = undefined;
		
		while(ds_list_find_index(global.inventory, "armor3") != -1)
		{
			var index = ds_list_find_index(global.inventory, "armor3");
	
			if (index != -1)
			{
				ds_list_delete(global.inventory, index);
			}
		}
		
		//add to euipped
		array_set(obj_ui.spotsEquipped,3, "armor3");
	
	}
	if(name == "armor4")
	{
		array_set(obj_ui.spotsEquipped, 3, 0);
		if(global.activeArmor == "armor2")
		{
			for(var i = 0; i < global.armor2Count; i++)
			{
				ds_list_add(global.inventory, "armor2");
			}
		}
		else if(global.activeArmor == "armor3")
		{
			for(var i = 0; i < global.armor3Count; i++)
			{
				ds_list_add(global.inventory, "armor3");
			}
		}
		else if(global.activeArmor == "armor1")
		{
			for(var i = 0; i < global.armor1Count; i++)
			{
				ds_list_add(global.inventory, "armor1");
			}
		} 
		global.activeArmor = undefined;
		
		while(ds_list_find_index(global.inventory, "armor4") != -1)
		{
			var index = ds_list_find_index(global.inventory, "armor4");
	
			if (index != -1)
			{
				ds_list_delete(global.inventory, index);
			}
		}
		
		//add to euipped
		array_set(obj_ui.spotsEquipped,3, "armor4");
	
	}
	
	instance_destroy(id, false);
}


