if(inventoryOpen)
{
	inventory.visible = true;
	if(ds_list_find_index(global.inventory, "arrow") == -1)
	{
		arrow.visible = false;
		for(var h = 0; h < ds_grid_height(spotsTaken); h++)
			{
				for(var w = 0; w < ds_grid_width(spotsTaken); w++)
				{
					if(spotsTaken[# w,h] == "arrow")
					{
						spotsTaken[# w,h] = 0;
					}
				}
			}
	}
	if(ds_list_find_index(global.inventory, "sword1") == -1)
	{
		sword1.visible = false;
		for(var h = 0; h < ds_grid_height(spotsTaken); h++)
			{
				for(var w = 0; w < ds_grid_width(spotsTaken); w++)
				{
					if(spotsTaken[# w,h] == "sword1")
					{
						spotsTaken[# w,h] = 0;
					}
				}
			}
	}
	if(ds_list_find_index(global.inventory, "sword2") == -1)
	{
		sword2.visible = false;
		for(var h = 0; h < ds_grid_height(spotsTaken); h++)
			{
				for(var w = 0; w < ds_grid_width(spotsTaken); w++)
				{
					if(spotsTaken[# w,h] == "sword2")
					{
						spotsTaken[# w,h] = 0;
					}
				}
			}
	}
	if(ds_list_find_index(global.inventory, "sword3") == -1)
	{
		sword3.visible = false;
		for(var h = 0; h < ds_grid_height(spotsTaken); h++)
			{
				for(var w = 0; w < ds_grid_width(spotsTaken); w++)
				{
					if(spotsTaken[# w,h] == "sword3")
					{
						spotsTaken[# w,h] = 0;
					}
				}
			}
	}
	if(ds_list_find_index(global.inventory, "sword4") == -1)
	{
		sword4.visible = false;
		for(var h = 0; h < ds_grid_height(spotsTaken); h++)
			{
				for(var w = 0; w < ds_grid_width(spotsTaken); w++)
				{
					if(spotsTaken[# w,h] == "sword4")
					{
						spotsTaken[# w,h] = 0;
					}
				}
			}
	}
	if(ds_list_find_index(global.inventory, "armor1") == -1)
	{
		armor1.visible = false;
		for(var h = 0; h < ds_grid_height(spotsTaken); h++)
			{
				for(var w = 0; w < ds_grid_width(spotsTaken); w++)
				{
					if(spotsTaken[# w,h] == "armor1")
					{
						spotsTaken[# w,h] = 0;
					}
				}
			}
	}
	if(ds_list_find_index(global.inventory, "armor2") == -1)
	{
		armor2.visible = false;
		for(var h = 0; h < ds_grid_height(spotsTaken); h++)
			{
				for(var w = 0; w < ds_grid_width(spotsTaken); w++)
				{
					if(spotsTaken[# w,h] == "armor2")
					{
						spotsTaken[# w,h] = 0;
					}
				}
			}
	}
	if(ds_list_find_index(global.inventory, "armor3") == -1)
	{
		armor3.visible = false;
		for(var h = 0; h < ds_grid_height(spotsTaken); h++)
			{
				for(var w = 0; w < ds_grid_width(spotsTaken); w++)
				{
					if(spotsTaken[# w,h] == "armor3")
					{
						spotsTaken[# w,h] = 0;
					}
				}
			}
	}
	if(ds_list_find_index(global.inventory, "armor4") == -1)
	{
		armor4.visible = false;
		for(var h = 0; h < ds_grid_height(spotsTaken); h++)
			{
				for(var w = 0; w < ds_grid_width(spotsTaken); w++)
				{
					if(spotsTaken[# w,h] == "armor4")
					{
						spotsTaken[# w,h] = 0;
					}
				}
			}
	}
	if(ds_list_find_index(global.inventory, "ring1") == -1)
	{
		ring1.visible = false;
		for(var h = 0; h < ds_grid_height(spotsTaken); h++)
			{
				for(var w = 0; w < ds_grid_width(spotsTaken); w++)
				{
					if(spotsTaken[# w,h] == "ring1")
					{
						spotsTaken[# w,h] = 0;
					}
				}
			}
	}
	if(ds_list_find_index(global.inventory, "ring2") == -1)
	{
		ring2.visible = false;
		for(var h = 0; h < ds_grid_height(spotsTaken); h++)
			{
				for(var w = 0; w < ds_grid_width(spotsTaken); w++)
				{
					if(spotsTaken[# w,h] == "ring2")
					{
						spotsTaken[# w,h] = 0;
					}
				}
			}
	}
	if(ds_list_find_index(global.inventory, "ring3") == -1)
	{
		ring3.visible = false;
		for(var h = 0; h < ds_grid_height(spotsTaken); h++)
			{
				for(var w = 0; w < ds_grid_width(spotsTaken); w++)
				{
					if(spotsTaken[# w,h] == "ring3")
					{
						spotsTaken[# w,h] = 0;
					}
				}
			}
	}
	if(ds_list_find_index(global.inventory, "ring4") == -1)
	{
		ring4.visible = false;
		for(var h = 0; h < ds_grid_height(spotsTaken); h++)
			{
				for(var w = 0; w < ds_grid_width(spotsTaken); w++)
				{
					if(spotsTaken[# w,h] == "ring4")
					{
						spotsTaken[# w,h] = 0;
					}
				}
			}
	}
	if(ds_list_find_index(global.inventory, "ring5") == -1)
	{
		ring5.visible = false;
		for(var h = 0; h < ds_grid_height(spotsTaken); h++)
			{
				for(var w = 0; w < ds_grid_width(spotsTaken); w++)
				{
					if(spotsTaken[# w,h] == "ring5")
					{
						spotsTaken[# w,h] = 0;
					}
				}
			}
	}
	if(ds_list_find_index(global.inventory, "arrow2") == -1)
	{
		arrow2.visible = false;
		for(var h = 0; h < ds_grid_height(spotsTaken); h++)
			{
				for(var w = 0; w < ds_grid_width(spotsTaken); w++)
				{
					if(spotsTaken[# w,h] == "arrow2")
					{
						spotsTaken[# w,h] = 0;
					}
				}
			}
	}
	if(ds_list_find_index(global.inventory, "arrow3") == -1)
	{
		arrow3.visible = false;
		for(var h = 0; h < ds_grid_height(spotsTaken); h++)
			{
				for(var w = 0; w < ds_grid_width(spotsTaken); w++)
				{
					if(spotsTaken[# w,h] == "arrow3")
					{
						spotsTaken[# w,h] = 0;
					}
				}
			}
	}
	if(ds_list_find_index(global.inventory, "potion") == -1)
	{
		potion.visible = false;
		for(var h = 0; h < ds_grid_height(spotsTaken); h++)
			{
				for(var w = 0; w < ds_grid_width(spotsTaken); w++)
				{
					if(spotsTaken[# w,h] == "potion")
					{
						spotsTaken[# w,h] = 0;
					}
				}
			}
	}
	if(ds_list_find_index(global.inventory, "potion2") == -1)
	{
		potion2.visible = false;
		for(var h = 0; h < ds_grid_height(spotsTaken); h++)
			{
				for(var w = 0; w < ds_grid_width(spotsTaken); w++)
				{
					if(spotsTaken[# w,h] == "potion2")
					{
						spotsTaken[# w,h] = 0;
					}
				}
			}
	}
	if(ds_list_find_index(global.inventory, "key") == -1)
	{
		key.visible = false;
		for(var h = 0; h < ds_grid_height(spotsTaken); h++)
			{
				for(var w = 0; w < ds_grid_width(spotsTaken); w++)
				{
					if(spotsTaken[# w,h] == "key")
					{
						spotsTaken[# w,h] = 0;
					}
				}
			}
	}
		
	for(var i = 0; i < ds_list_size(global.inventory); i++)
	{
		if(global.inventory[| i] == "arrow" && array_get(spotsEquipped, 4) != "arrow")
		{
			var add = true;
			for(var h = 0; h < ds_grid_height(spotsTaken); h++)
			{
				for(var w = 0; w < ds_grid_width(spotsTaken); w++)
				{
					if(spotsTaken[# w,h] == "arrow")
					{
						add = false;
					}
				}
			}
			if(add)
			{
				for(var h = 0; h < ds_grid_height(spotsTaken); h++)
				{
					for(var w = 0; w < ds_grid_width(spotsTaken); w++)
					{
						if(spotsTaken[# w,h] == 0 && add)
						{
							spotsTaken[# w,h] = "arrow";
							add = false;
						}
					}
				}
			}
		}
		else if(global.inventory[| i] == "arrow" && array_get(spotsEquipped, 4) == "arrow")
		{
			while(ds_list_find_index(global.inventory, "arrow") != -1)
			{
			var index = ds_list_find_index(global.inventory, "arrow");
	
			if (index != -1)
			{
				ds_list_delete(global.inventory, index);
			}
			}
		}
		if(global.inventory[| i] == "sword1" && array_get(spotsEquipped, 2) != "sword1")
		{
			var add = true;
			for(var h = 0; h < ds_grid_height(spotsTaken); h++)
			{
				for(var w = 0; w < ds_grid_width(spotsTaken); w++)
				{
					if(spotsTaken[# w,h] == "sword1")
					{
						add = false;
					}
				}
			}
			if(add)
			{
				for(var h = 0; h < ds_grid_height(spotsTaken); h++)
				{
					for(var w = 0; w < ds_grid_width(spotsTaken); w++)
					{
						if(spotsTaken[# w,h] == 0 && add)
						{
							spotsTaken[# w,h] = "sword1";
							add = false;
						}
					}
				}
			}
		}
		else if(global.inventory[| i] == "sword1" && array_get(spotsEquipped, 2) == "sword1")
		{
			while(ds_list_find_index(global.inventory, "sword1") != -1)
			{
			var index = ds_list_find_index(global.inventory, "sword1");
	
			if (index != -1)
			{
				ds_list_delete(global.inventory, index);
			}
			}
		}
		if(global.inventory[| i] == "sword2" && array_get(spotsEquipped, 2) != "sword2")
		{
			var add = true;
			for(var h = 0; h < ds_grid_height(spotsTaken); h++)
			{
				for(var w = 0; w < ds_grid_width(spotsTaken); w++)
				{
					if(spotsTaken[# w,h] == "sword2")
					{
						add = false;
					}
				}
			}
			if(add)
			{
				for(var h = 0; h < ds_grid_height(spotsTaken); h++)
				{
					for(var w = 0; w < ds_grid_width(spotsTaken); w++)
					{
						if(spotsTaken[# w,h] == 0 && add)
						{
							spotsTaken[# w,h] = "sword2";
							add = false;
						}
					}
				}
			}
		}
		else if(global.inventory[| i] == "sword2" && array_get(spotsEquipped, 2) == "sword2")
		{
			while(ds_list_find_index(global.inventory, "sword2") != -1)
			{
			var index = ds_list_find_index(global.inventory, "sword2");
	
			if (index != -1)
			{
				ds_list_delete(global.inventory, index);
			}
			}
		}
		if(global.inventory[| i] == "sword3" && array_get(spotsEquipped, 2) != "sword3")
		{
			var add = true;
			for(var h = 0; h < ds_grid_height(spotsTaken); h++)
			{
				for(var w = 0; w < ds_grid_width(spotsTaken); w++)
				{
					if(spotsTaken[# w,h] == "sword3")
					{
						add = false;
					}
				}
			}
			if(add)
			{
				for(var h = 0; h < ds_grid_height(spotsTaken); h++)
				{
					for(var w = 0; w < ds_grid_width(spotsTaken); w++)
					{
						if(spotsTaken[# w,h] == 0 && add)
						{
							spotsTaken[# w,h] = "sword3";
							add = false;
						}
					}
				}
			}
		}
		else if(global.inventory[| i] == "sword3" && array_get(spotsEquipped, 2) == "sword3")
		{
			while(ds_list_find_index(global.inventory, "sword3") != -1)
			{
			var index = ds_list_find_index(global.inventory, "sword3");
	
			if (index != -1)
			{
				ds_list_delete(global.inventory, index);
			}
			}
		}
		if(global.inventory[| i] == "sword4" && array_get(spotsEquipped, 2) != "sword4")
		{
			var add = true;
			for(var h = 0; h < ds_grid_height(spotsTaken); h++)
			{
				for(var w = 0; w < ds_grid_width(spotsTaken); w++)
				{
					if(spotsTaken[# w,h] == "sword4")
					{
						add = false;
					}
				}
			}
			if(add)
			{
				for(var h = 0; h < ds_grid_height(spotsTaken); h++)
				{
					for(var w = 0; w < ds_grid_width(spotsTaken); w++)
					{
						if(spotsTaken[# w,h] == 0 && add)
						{
							spotsTaken[# w,h] = "sword4";
							add = false;
						}
					}
				}
			}
		}
		else if(global.inventory[| i] == "sword4" && array_get(spotsEquipped, 2) == "sword4")
		{
			while(ds_list_find_index(global.inventory, "sword4") != -1)
			{
			var index = ds_list_find_index(global.inventory, "sword4");
	
			if (index != -1)
			{
				ds_list_delete(global.inventory, index);
			}
			}
		}
		if(global.inventory[| i] == "armor1" && array_get(spotsEquipped, 3) != "armor1")
		{
			var add = true;
			for(var h = 0; h < ds_grid_height(spotsTaken); h++)
			{
				for(var w = 0; w < ds_grid_width(spotsTaken); w++)
				{
					if(spotsTaken[# w,h] == "armor1")
					{
						add = false;
					}
				}
			}
			if(add)
			{
				for(var h = 0; h < ds_grid_height(spotsTaken); h++)
				{
					for(var w = 0; w < ds_grid_width(spotsTaken); w++)
					{
						if(spotsTaken[# w,h] == 0 && add)
						{
							spotsTaken[# w,h] = "armor1";
							add = false;
						}
					}
				}
			}
		}
		else if(global.inventory[| i] == "armor1" && array_get(spotsEquipped, 3) == "armor1")
		{
			while(ds_list_find_index(global.inventory, "armor1") != -1)
			{
			var index = ds_list_find_index(global.inventory, "armor1");
	
			if (index != -1)
			{
				ds_list_delete(global.inventory, index);
			}
			}
		}
		if(global.inventory[| i] == "armor2" && array_get(spotsEquipped, 3) != "armor2")
		{
			var add = true;
			for(var h = 0; h < ds_grid_height(spotsTaken); h++)
			{
				for(var w = 0; w < ds_grid_width(spotsTaken); w++)
				{
					if(spotsTaken[# w,h] == "armor2")
					{
						add = false;
					}
				}
			}
			if(add)
			{
				for(var h = 0; h < ds_grid_height(spotsTaken); h++)
				{
					for(var w = 0; w < ds_grid_width(spotsTaken); w++)
					{
						if(spotsTaken[# w,h] == 0 && add)
						{
							spotsTaken[# w,h] = "armor2";
							add = false;
						}
					}
				}
			}
		}
		else if(global.inventory[| i] == "armor2" && array_get(spotsEquipped, 3) == "armor2")
		{
			while(ds_list_find_index(global.inventory, "armor2") != -1)
			{
			var index = ds_list_find_index(global.inventory, "armor2");
	
			if (index != -1)
			{
				ds_list_delete(global.inventory, index);
			}
			}
		}
		if(global.inventory[| i] == "armor3" && array_get(spotsEquipped, 3) != "armor3")
		{
			var add = true;
			for(var h = 0; h < ds_grid_height(spotsTaken); h++)
			{
				for(var w = 0; w < ds_grid_width(spotsTaken); w++)
				{
					if(spotsTaken[# w,h] == "armor3")
					{
						add = false;
					}
				}
			}
			if(add)
			{
				for(var h = 0; h < ds_grid_height(spotsTaken); h++)
				{
					for(var w = 0; w < ds_grid_width(spotsTaken); w++)
					{
						if(spotsTaken[# w,h] == 0 && add)
						{
							spotsTaken[# w,h] = "armor3";
							add = false;
						}
					}
				}
			}
		}
		else if(global.inventory[| i] == "armor3" && array_get(spotsEquipped, 3) == "armor3")
		{
			while(ds_list_find_index(global.inventory, "armor3") != -1)
			{
			var index = ds_list_find_index(global.inventory, "armor3");
	
			if (index != -1)
			{
				ds_list_delete(global.inventory, index);
			}
			}
		}
		if(global.inventory[| i] == "armor4" && array_get(spotsEquipped, 3) != "armor4")
		{
			var add = true;
			for(var h = 0; h < ds_grid_height(spotsTaken); h++)
			{
				for(var w = 0; w < ds_grid_width(spotsTaken); w++)
				{
					if(spotsTaken[# w,h] == "armor4")
					{
						add = false;
					}
				}
			}
			if(add)
			{
				for(var h = 0; h < ds_grid_height(spotsTaken); h++)
				{
					for(var w = 0; w < ds_grid_width(spotsTaken); w++)
					{
						if(spotsTaken[# w,h] == 0 && add)
						{
							spotsTaken[# w,h] = "armor4";
							add = false;
						}
					}
				}
			}
		}
		else if(global.inventory[| i] == "armor4" && array_get(spotsEquipped, 3) == "armor4")
		{
			while(ds_list_find_index(global.inventory, "armor4") != -1)
			{
			var index = ds_list_find_index(global.inventory, "armor4");
	
			if (index != -1)
			{
				ds_list_delete(global.inventory, index);
			}
			}
		}
		if(global.inventory[| i] == "ring1" && array_get(spotsEquipped, 0) != "ring1" && array_get(spotsEquipped, 1) != "ring1")
		{
			var add = true;
			for(var h = 0; h < ds_grid_height(spotsTaken); h++)
			{
				for(var w = 0; w < ds_grid_width(spotsTaken); w++)
				{
					if(spotsTaken[# w,h] == "ring1")
					{
						add = false;
					}
				}
			}
			if(add)
			{
				for(var h = 0; h < ds_grid_height(spotsTaken); h++)
				{
					for(var w = 0; w < ds_grid_width(spotsTaken); w++)
					{
						if(spotsTaken[# w,h] == 0 && add)
						{
							spotsTaken[# w,h] = "ring1";
							add = false;
						}
					}
				}
			}
		}
		else if(global.inventory[| i] == "ring1" && array_get(spotsEquipped, 0) == "ring1" && array_get(spotsEquipped, 1) == "ring1")
		{
			while(ds_list_find_index(global.inventory, "ring1") != -1)
			{
			var index = ds_list_find_index(global.inventory, "ring1");
	
			if (index != -1)
			{
				ds_list_delete(global.inventory, index);
			}
			}
		}
		if(global.inventory[| i] == "ring2" && array_get(spotsEquipped, 0) != "ring2" && array_get(spotsEquipped, 1) != "ring2")
		{
			var add = true;
			for(var h = 0; h < ds_grid_height(spotsTaken); h++)
			{
				for(var w = 0; w < ds_grid_width(spotsTaken); w++)
				{
					if(spotsTaken[# w,h] == "ring2")
					{
						add = false;
					}
				}
			}
			if(add)
			{
				for(var h = 0; h < ds_grid_height(spotsTaken); h++)
				{
					for(var w = 0; w < ds_grid_width(spotsTaken); w++)
					{
						if(spotsTaken[# w,h] == 0 && add)
						{
							spotsTaken[# w,h] = "ring2";
							add = false;
						}
					}
				}
			}
		}
		else if(global.inventory[| i] == "ring2" && array_get(spotsEquipped, 0) == "ring2" && array_get(spotsEquipped, 1) == "ring2")
		{
			while(ds_list_find_index(global.inventory, "ring2") != -1)
			{
			var index = ds_list_find_index(global.inventory, "ring2");
	
			if (index != -1)
			{
				ds_list_delete(global.inventory, index);
			}
			}
		}
		if(global.inventory[| i] == "ring3" && array_get(spotsEquipped, 0) != "ring3" && array_get(spotsEquipped, 1) != "ring3")
		{
			var add = true;
			for(var h = 0; h < ds_grid_height(spotsTaken); h++)
			{
				for(var w = 0; w < ds_grid_width(spotsTaken); w++)
				{
					if(spotsTaken[# w,h] == "ring3")
					{
						add = false;
					}
				}
			}
			if(add)
			{
				for(var h = 0; h < ds_grid_height(spotsTaken); h++)
				{
					for(var w = 0; w < ds_grid_width(spotsTaken); w++)
					{
						if(spotsTaken[# w,h] == 0 && add)
						{
							spotsTaken[# w,h] = "ring3";
							add = false;
						}
					}
				}
			}
		}
		else if(global.inventory[| i] == "ring3" && array_get(spotsEquipped, 0) == "ring3" && array_get(spotsEquipped, 1) == "ring3")
		{
			while(ds_list_find_index(global.inventory, "ring3") != -1)
			{
			var index = ds_list_find_index(global.inventory, "ring3");
	
			if (index != -1)
			{
				ds_list_delete(global.inventory, index);
			}
			}
		}
		if(global.inventory[| i] == "ring4" && array_get(spotsEquipped, 0) != "ring4" && array_get(spotsEquipped, 1) != "ring4")
		{
			var add = true;
			for(var h = 0; h < ds_grid_height(spotsTaken); h++)
			{
				for(var w = 0; w < ds_grid_width(spotsTaken); w++)
				{
					if(spotsTaken[# w,h] == "ring4")
					{
						add = false;
					}
				}
			}
			if(add)
			{
				for(var h = 0; h < ds_grid_height(spotsTaken); h++)
				{
					for(var w = 0; w < ds_grid_width(spotsTaken); w++)
					{
						if(spotsTaken[# w,h] == 0 && add)
						{
							spotsTaken[# w,h] = "ring4";
							add = false;
						}
					}
				}
			}
		}
		else if(global.inventory[| i] == "ring4" && array_get(spotsEquipped, 0) == "ring4" && array_get(spotsEquipped, 1) == "ring4")
		{
			while(ds_list_find_index(global.inventory, "ring4") != -1)
			{
			var index = ds_list_find_index(global.inventory, "ring4");
	
			if (index != -1)
			{
				ds_list_delete(global.inventory, index);
			}
			}
		}
		if(global.inventory[| i] == "ring5" && array_get(spotsEquipped, 0) != "ring5" && array_get(spotsEquipped, 1) != "ring5")
		{
			var add = true;
			for(var h = 0; h < ds_grid_height(spotsTaken); h++)
			{
				for(var w = 0; w < ds_grid_width(spotsTaken); w++)
				{
					if(spotsTaken[# w,h] == "ring5")
					{
						add = false;
					}
				}
			}
			if(add)
			{
				for(var h = 0; h < ds_grid_height(spotsTaken); h++)
				{
					for(var w = 0; w < ds_grid_width(spotsTaken); w++)
					{
						if(spotsTaken[# w,h] == 0 && add)
						{
							spotsTaken[# w,h] = "ring5";
							add = false;
						}
					}
				}
			}
		}
		else if(global.inventory[| i] == "ring5" && array_get(spotsEquipped, 0) == "ring5" && array_get(spotsEquipped, 1) == "ring5")
		{
			while(ds_list_find_index(global.inventory, "ring5") != -1)
			{
			var index = ds_list_find_index(global.inventory, "ring5");
	
			if (index != -1)
			{
				ds_list_delete(global.inventory, index);
			}
			}
		}
		else if(global.inventory[| i] == "potion")
		{
			var add = true;
			for(var h = 0; h < ds_grid_height(spotsTaken); h++)
			{
				for(var w = 0; w < ds_grid_width(spotsTaken); w++)
				{
					if(spotsTaken[# w,h] == "potion")
					{
						add = false;
					}
				}
			}
			if(add)
			{
				for(var h = 0; h < ds_grid_height(spotsTaken); h++)
				{
					for(var w = 0; w < ds_grid_width(spotsTaken); w++)
					{
						if(spotsTaken[# w,h] == 0 && add)
						{
							spotsTaken[# w,h] = "potion";
							add = false;
						}
					}
				}
			}
		}
		else if(global.inventory[| i] == "arrow2" && array_get(spotsEquipped, 4) != "arrow2")
		{
			var add = true;
			for(var h = 0; h < ds_grid_height(spotsTaken); h++)
			{
				for(var w = 0; w < ds_grid_width(spotsTaken); w++)
				{
					if(spotsTaken[# w,h] == "arrow2")
					{
						add = false;
					}
				}
			}
			if(add)
			{
				for(var h = 0; h < ds_grid_height(spotsTaken); h++)
				{
					for(var w = 0; w < ds_grid_width(spotsTaken); w++)
					{
						if(spotsTaken[# w,h] == 0 && add)
						{
							spotsTaken[# w,h] = "arrow2";
							add = false;
						}
					}
				}
			}
		}
		else if(global.inventory[| i] == "arrow2" && array_get(spotsEquipped, 4) == "arrow2")
		{
			while(ds_list_find_index(global.inventory, "arrow2") != -1)
			{
			var index = ds_list_find_index(global.inventory, "arrow2");
	
			if (index != -1)
			{
				ds_list_delete(global.inventory, index);
			}
			}
		}
		else if(global.inventory[| i] == "arrow3" && array_get(spotsEquipped, 4) != "arrow3")
		{
			var add = true;
			for(var h = 0; h < ds_grid_height(spotsTaken); h++)
			{
				for(var w = 0; w < ds_grid_width(spotsTaken); w++)
				{
					if(spotsTaken[# w,h] == "arrow3")
					{
						add = false;
					}
				}
			}
			if(add)
			{
				for(var h = 0; h < ds_grid_height(spotsTaken); h++)
				{
					for(var w = 0; w < ds_grid_width(spotsTaken); w++)
					{
						if(spotsTaken[# w,h] == 0 && add)
						{
							spotsTaken[# w,h] = "arrow3";
							add = false;
						}
					}
				}
			}
		}
		else if(global.inventory[| i] == "arrow3" && array_get(spotsEquipped, 4) == "arrow3")
		{
			while(ds_list_find_index(global.inventory, "arrow3") != -1)
			{
			var index = ds_list_find_index(global.inventory, "arrow3");
	
			if (index != -1)
			{
				ds_list_delete(global.inventory, index);
			}
			}
		}
		else if(global.inventory[| i] == "potion2")
		{
			var add = true;
			for(var h = 0; h < ds_grid_height(spotsTaken); h++)
			{
				for(var w = 0; w < ds_grid_width(spotsTaken); w++)
				{
					if(spotsTaken[# w,h] == "potion2")
					{
						add = false;
					}
				}
			}
			if(add)
			{
				for(var h = 0; h < ds_grid_height(spotsTaken); h++)
				{
					for(var w = 0; w < ds_grid_width(spotsTaken); w++)
					{
						if(spotsTaken[# w,h] == 0 && add)
						{
							spotsTaken[# w,h] = "potion2";
							add = false;
						}
					}
				}
			}
		}
		else if(global.inventory[| i] == "key")
		{
			var add = true;
			for(var h = 0; h < ds_grid_height(spotsTaken); h++)
			{
				for(var w = 0; w < ds_grid_width(spotsTaken); w++)
				{
					if(spotsTaken[# w,h] == "key")
					{
						add = false;
					}
				}
			}
			if(add)
			{
				for(var h = 0; h < ds_grid_height(spotsTaken); h++)
				{
					for(var w = 0; w < ds_grid_width(spotsTaken); w++)
					{
						if(spotsTaken[# w,h] == 0 && add)
						{
							spotsTaken[# w,h] = "key";
							add = false;
						}
					}
				}
			}
		}
	}
	
	
	//print the displays out
	for(var h = 0; h < ds_grid_height(spotsTaken); h++)
	{
		for(var w = 0; w < ds_grid_width(spotsTaken); w++)
		{
			if(spotsTaken[# w,h] == "arrow")
			{
				arrow.visible = true;
				arrow.x = 20 + (w * 27);
				arrow.y = 95 + (h * 26);
			}
			else if(spotsTaken[# w,h] == "potion")
			{
				potion.visible = true;
				potion.x = 6 + (w * 27);
				potion.y = 80 + (h * 26);
			}
			else if(spotsTaken[# w,h] == "potion2")
			{
				potion2.visible = true;
				potion2.x = 6 + (w * 27);
				potion2.y = 80 + (h * 26);
			}
			else if(spotsTaken[# w,h] == "arrow2")
			{
				arrow2.visible = true;
				arrow2.x = 20 + (w * 27);
				arrow2.y = 95 + (h * 26);
			}
			else if(spotsTaken[# w,h] == "arrow3")
			{
				arrow3.visible = true;
				arrow3.x = 20 + (w * 27);
				arrow3.y = 95 + (h * 26);
			}
			else if(spotsTaken[# w,h] == "key")
			{
				key.visible = true;
				key.x = 20 + (w * 27);
				key.y = 95 + (h * 26);
			}
			else if(spotsTaken[# w,h] == "sword1")
			{
				sword1.visible = true;
				sword1.x = 20 + (w * 27);
				sword1.y = 95 + (h * 26);
			}
			else if(spotsTaken[# w,h] == "sword2")
			{
				sword2.visible = true;
				sword2.x = 20 + (w * 27);
				sword2.y = 95 + (h * 26);
			}
			else if(spotsTaken[# w,h] == "sword3")
			{
				sword3.visible = true;
				sword3.x = 20 + (w * 27);
				sword3.y = 95 + (h * 26);
			}
			else if(spotsTaken[# w,h] == "sword4")
			{
				sword4.visible = true;
				sword4.x = 20 + (w * 27);
				sword4.y = 95 + (h * 26);
			}
			else if(spotsTaken[# w,h] == "armor1")
			{
				armor1.visible = true;
				armor1.x = 20 + (w * 27);
				armor1.y = 95 + (h * 26);
			}
			else if(spotsTaken[# w,h] == "armor2")
			{
				armor2.visible = true;
				armor2.x = 20 + (w * 27);
				armor2.y = 95 + (h * 26);
			}
			else if(spotsTaken[# w,h] == "armor3")
			{
				armor3.visible = true;
				armor3.x = 20 + (w * 27);
				armor3.y = 95 + (h * 26);
			}
			else if(spotsTaken[# w,h] == "armor4")
			{
				armor4.visible = true;
				armor4.x = 20 + (w * 27);
				armor4.y = 95 + (h * 26);
			}
			else if(spotsTaken[# w,h] == "ring1")
			{
				ring1.visible = true;
				ring1.x = 20 + (w * 27);
				ring1.y = 95 + (h * 26);
			}
			else if(spotsTaken[# w,h] == "ring2")
			{
				ring2.visible = true;
				ring2.x = 20 + (w * 27);
				ring2.y = 95 + (h * 26);
			}
			else if(spotsTaken[# w,h] == "ring3")
			{
				ring3.visible = true;
				ring3.x = 20 + (w * 27);
				ring3.y = 95 + (h * 26);
			}
			else if(spotsTaken[# w,h] == "ring4")
			{
				ring4.visible = true;
				ring4.x = 20 + (w * 27);
				ring4.y = 95 + (h * 26);
			}
			else if(spotsTaken[# w,h] == "ring5")
			{
				ring5.visible = true;
				ring5.x = 20 + (w * 27);
				ring5.y = 95 + (h * 26);
			}
		}
	}
	
		if(array_get(spotsEquipped, 4) == "arrow")
		{
			arrow.visible = true;
			arrow.x = 75;
			arrow.y = 323;
			global.activeItem = "arrow";
		}
		else if(array_get(spotsEquipped, 4) == "arrow2")
		{
			arrow2.visible = true;
			arrow2.x = 75;
			arrow2.y = 323;
			global.activeItem = "arrow2";
		}
		else if(array_get(spotsEquipped, 4) == "arrow3")
		{
			arrow3.visible = true;
			arrow3.x = 75;
			arrow3.y = 323;
			global.activeItem = "arrow3";
		}
		else
		{
			global.activeItem = undefined;
		}
		
		if(array_get(spotsEquipped, 2) == "sword1")
		{
			sword1.visible = true;
			sword1.x = 123;
			sword1.y = 267;
			global.activeWeapon = "sword1";
		}
		else if(array_get(spotsEquipped, 2) == "sword2")
		{
			sword2.visible = true;
			sword2.x = 123;
			sword2.y = 267;
			global.activeWeapon = "sword2";
		}
		else if(array_get(spotsEquipped, 2) == "sword3")
		{
			sword3.visible = true;
			sword3.x = 123;
			sword3.y = 267;
			global.activeWeapon = "sword3";
		}
		else if(array_get(spotsEquipped, 2) == "sword4")
		{
			sword4.visible = true;
			sword4.x = 123;
			sword4.y = 267;
			global.activeWeapon = "sword4";
		}
		else
		{
			global.activeWeapon = undefined;
		}
		
		if(array_get(spotsEquipped, 3) == "armor1")
		{
			armor1.visible = true;
			armor1.x = 124;
			armor1.y = 295;
			global.activeArmor = "armor1";
		}
		else if(array_get(spotsEquipped, 3) == "armor2")
		{
			armor2.visible = true;
			armor2.x = 124;
			armor2.y = 295;
			global.activeArmor = "armor2";
		}
		else if(array_get(spotsEquipped, 3) == "armor3")
		{
			armor3.visible = true;
			armor3.x = 124;
			armor3.y = 295;
			global.activeArmor = "armor3";
		}
		else if(array_get(spotsEquipped, 3) == "armor4")
		{
			armor4.visible = true;
			armor4.x = 124;
			armor4.y = 295;
			global.activeArmor = "armor4";
		}
		else
		{
			global.activeArmor = undefined;
		}
		
		if(array_get(spotsEquipped, 0) == "ring1")
		{
			ring1.visible = true;
			ring1.x = 124;
			ring1.y = 295;
			global.activeRing1= "ring1";
		}
		else if(array_get(spotsEquipped, 0) == "ring2")
		{
			ring2.visible = true;
			ring2.x = 124;
			ring2.y = 295;
			global.activeRing1= "ring2";
		}
		else if(array_get(spotsEquipped, 0) == "ring3")
		{
			ring3.visible = true;
			ring3.x = 124;
			ring3.y = 295;
			global.activeRing1= "ring3";
		}
		else if(array_get(spotsEquipped, 0) == "ring4")
		{
			ring4.visible = true;
			ring4.x = 124;
			ring4.y = 295;
			global.activeRing1= "ring4";
		}
		else if(array_get(spotsEquipped, 0) == "ring5")
		{
			ring5.visible = true;
			ring5.x = 124;
			ring5.y = 295;
			global.activeRing1= "ring5";
		}
		else
		{
			global.activeRing1 = undefined;
		}
		
		if(array_get(spotsEquipped, 1) == "ring1")
		{
			ring1.visible = true;
			ring1.x = 124;
			ring1.y = 295;
			global.activeRing2= "ring1";
		}
		else if(array_get(spotsEquipped, 1) == "ring2")
		{
			ring2.visible = true;
			ring2.x = 124;
			ring2.y = 295;
			global.activeRing2= "ring2";
		}
		else if(array_get(spotsEquipped, 1) == "ring3")
		{
			ring3.visible = true;
			ring3.x = 124;
			ring3.y = 295;
			global.activeRing2= "ring3";
		}
		else if(array_get(spotsEquipped, 1) == "ring4")
		{
			ring4.visible = true;
			ring4.x = 124;
			ring4.y = 295;
			global.activeRing2= "ring4";
		}
		else if(array_get(spotsEquipped, 1) == "ring5")
		{
			ring5.visible = true;
			ring5.x = 124;
			ring5.y = 295;
			global.activeRing2= "ring5";
		}
		else
		{
			global.activeRing2 = undefined;
		}
	}
	
else
{
	//set everything in the inventory invisible
	inventory.visible = false;
	arrow.visible = false;
	arrow2.visible = false;
	arrow3.visible = false;
	potion.visible = false;
	potion2.visible = false;
	key.visible = false;
	sword1.visible = false;
	sword2.visible = false;
	sword3.visible = false;
	sword4.visible = false;
	armor1.visible = false;
	armor2.visible = false;
	armor3.visible = false;
	armor4.visible = false;
	ring1.visible = false;
	ring2.visible = false;
	ring3.visible = false;
	ring4.visible = false;
	ring5.visible = false;
	
}