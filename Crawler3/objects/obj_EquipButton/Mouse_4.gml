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
	if(name == "sword1" && global.activeWeapon != "sword1")
{
    array_set(obj_ui.spotsEquipped, 2, 0);
    if(global.activeWeapon == "sword2")
    {
        ds_list_add(global.inventory, "sword2");
        global.sword2Count++;  // Increment global sword2 count
    }
    else if(global.activeWeapon == "sword3")
    {
        ds_list_add(global.inventory, "sword3");
        global.sword3Count++;  // Increment global sword3 count
    }
    else if(global.activeWeapon == "sword4")
    {
        ds_list_add(global.inventory, "sword4");
        global.sword4Count++;  // Increment global sword4 count
    } 
    global.activeWeapon = undefined;
    
    var sword1index = ds_list_find_index(global.inventory, "sword1");
    if (sword1index != -1) {
        ds_list_delete(global.inventory, sword1index);
        global.sword1Count--;
		for (var i = 0; i < ds_list_size(global.inventory); i++) 
		{
			show_debug_message("item " + ds_list_find_value(global.inventory, i) + "\n");
		}
    }
    
    //add to equipped
    array_set(obj_ui.spotsEquipped,2, "sword1");
}

if(name == "sword2" && global.activeWeapon != "sword2")
{
    array_set(obj_ui.spotsEquipped, 2, 0);
    if(global.activeWeapon == "sword1")
    {
        ds_list_add(global.inventory, "sword1");
        global.sword1Count++;  // Increment global sword1 count
    }
    else if(global.activeWeapon == "sword3")
    {
        ds_list_add(global.inventory, "sword3");
        global.sword3Count++;  // Increment global sword3 count
    }
    else if(global.activeWeapon == "sword4")
    {
        ds_list_add(global.inventory, "sword4");
        global.sword4Count++;  // Increment global sword4 count
    } 
    global.activeWeapon = undefined;
    
    var sword2index = ds_list_find_index(global.inventory, "sword2");
    if (sword2index != -1) {
        ds_list_delete(global.inventory, sword2index);
        global.sword2Count--;
    }
    
    //add to equipped
    array_set(obj_ui.spotsEquipped,2, "sword2");
}

if(name == "sword3" && global.activeWeapon != "sword3")
{
    array_set(obj_ui.spotsEquipped, 2, 0);
    if(global.activeWeapon == "sword2")
    {
        ds_list_add(global.inventory, "sword2");
        global.sword2Count++;  // Increment global sword2 count
    }
    else if(global.activeWeapon == "sword1")
    {
        ds_list_add(global.inventory, "sword1");
        global.sword1Count++;  // Increment global sword1 count
    }
    else if(global.activeWeapon == "sword4")
    {
        ds_list_add(global.inventory, "sword4");
        global.sword4Count++;  // Increment global sword4 count
    } 
    global.activeWeapon = undefined;
    
    var sword3index = ds_list_find_index(global.inventory, "sword3");
    if (sword3index != -1) {
        ds_list_delete(global.inventory, sword3index);
        global.sword3Count--;
    }
    
    //add to equipped
    array_set(obj_ui.spotsEquipped,2, "sword3");
}

if(name == "sword4" && global.activeWeapon != "sword4")
{
    show_debug_message("sword4");
    array_set(obj_ui.spotsEquipped, 2, 0);
    if(global.activeWeapon == "sword2")
    {
        ds_list_add(global.inventory, "sword2");
        global.sword2Count++;  // Increment global sword2 count
    }
    else if(global.activeWeapon == "sword3")
    {
        ds_list_add(global.inventory, "sword3");
        global.sword3Count++;  // Increment global sword3 count
    }
    else if(global.activeWeapon == "sword1")
    {
        ds_list_add(global.inventory, "sword1");
        global.sword1Count++;  // Increment global sword1 count
    } 
    global.activeWeapon = undefined;
    
    var sword4index = ds_list_find_index(global.inventory, "sword4");
    if (sword4index != -1) {
        ds_list_delete(global.inventory, sword4index);
        global.sword4Count--;
    }
    
    //add to equipped
    array_set(obj_ui.spotsEquipped,2, "sword4");
}

if(name == "armor1" && global.activeArmor != "armor1")
{
    array_set(obj_ui.spotsEquipped, 3, 0);
    if(global.activeArmor == "armor2")
    {
        ds_list_add(global.inventory, "armor2");
        global.armor2Count++;  // Increment global armor2 count
    }
    else if(global.activeArmor == "armor3")
    {
        ds_list_add(global.inventory, "armor3");
        global.armor3Count++;  // Increment global armor3 count
    }
    else if(global.activeArmor == "armor4")
    {
        ds_list_add(global.inventory, "armor4");
        global.armor4Count++;  // Increment global armor4 count
    } 
    global.activeArmor = undefined;
    
    var armor1index = ds_list_find_index(global.inventory, "armor1");
    if (armor1index != -1) {
        ds_list_delete(global.inventory, armor1index);
        global.armor1Count--;
    }
    
    //add to equipped
    array_set(obj_ui.spotsEquipped,3, "armor1");
}

if(name == "armor2" && global.activeArmor != "armor2")
{
    array_set(obj_ui.spotsEquipped, 3, 0);
    if(global.activeArmor == "armor1")
    {
        ds_list_add(global.inventory, "armor1");
        global.armor1Count++;  // Increment global armor1 count
    }
    else if(global.activeArmor == "armor3")
    {
        ds_list_add(global.inventory, "armor3");
        global.armor3Count++;  // Increment global armor3 count
    }
    else if(global.activeArmor == "armor4")
    {
        ds_list_add(global.inventory, "armor4");
        global.armor4Count++;  // Increment global armor4 count
    } 
    global.activeArmor = undefined;
    
    var armor2index = ds_list_find_index(global.inventory, "armor2");
    if (armor2index != -1) {
        ds_list_delete(global.inventory, armor2index);
        global.armor2Count--;
    }
    
    //add to equipped
    array_set(obj_ui.spotsEquipped,3, "armor2");
}

if(name == "armor3" && global.activeArmor != "armor3")
{
    array_set(obj_ui.spotsEquipped, 3, 0);
    if(global.activeArmor == "armor2")
    {
        ds_list_add(global.inventory, "armor2");
        global.armor2Count++;  // Increment global armor2 count
    }
    else if(global.activeArmor == "armor1")
    {
        ds_list_add(global.inventory, "armor1");
        global.armor1Count++;  // Increment global armor1 count
    }
    else if(global.activeArmor == "armor4")
    {
        ds_list_add(global.inventory, "armor4");
        global.armor4Count++;  // Increment global armor4 count
    } 
    global.activeArmor = undefined;
    
    var armor3index = ds_list_find_index(global.inventory, "armor3");
    if (armor3index != -1) {
        ds_list_delete(global.inventory, armor3index);
        global.armor3Count--;
    }
    
    //add to equipped
    array_set(obj_ui.spotsEquipped,3, "armor3");
}

if(name == "armor4" && global.activeArmor != "armor4")
{
    array_set(obj_ui.spotsEquipped, 3, 0);
    if(global.activeArmor == "armor2")
    {
        ds_list_add(global.inventory, "armor2");
        global.armor2Count++;  // Increment global armor2 count
    }
    else if(global.activeArmor == "armor3")
    {
        ds_list_add(global.inventory, "armor3");
        global.armor3Count++;  // Increment global armor3 count
    }
    else if(global.activeArmor == "armor1")
    {
        ds_list_add(global.inventory, "armor1");
        global.armor1Count++;  // Increment global armor1 count
    } 
    global.activeArmor = undefined;
    
    var armor4index = ds_list_find_index(global.inventory, "armor4");
    if (armor4index != -1) {
        ds_list_delete(global.inventory, armor4index);
        global.armor4Count--;
    }
    
    //add to equipped
    array_set(obj_ui.spotsEquipped,3, "armor4");
}

if(name == "ring1")
{
    var first = false;
    var second = false;
    if(array_get(obj_ui.spotsEquipped, 0) == 0)
        first = true;
    else if(array_get(obj_ui.spotsEquipped, 1) == 0)
        second = true;
    else
        first = true;
	show_debug_message(array_get(obj_ui.spotsEquipped, 1));

    if(first)
    {
        if(global.activeRing1 == "ring2")
        {
            ds_list_add(global.inventory, "ring2");
            global.ring2Count++;  // Increment global ring2 count
        }
		else if(global.activeRing1 == "ring1")
        {
            ds_list_add(global.inventory, "ring1");
            global.ring1Count++;  // Increment global ring2 count
        }
        else if(global.activeRing1 == "ring3")
        {
            ds_list_add(global.inventory, "ring3");
            global.ring3Count++;  // Increment global ring3 count
        }
        else if(global.activeRing1 == "ring4")
        {
            ds_list_add(global.inventory, "ring4");
            global.ring4Count++;  // Increment global ring4 count
        }
        else if(global.activeRing1 == "ring5")
        {
            ds_list_add(global.inventory, "ring5");
            global.ring5Count++;  // Increment global ring5 count
        }
        global.activeRing1 = undefined;
    }
    else if(second)
    {
        if(global.activeRing2 == "ring2")
        {
            ds_list_add(global.inventory, "ring2");
            global.ring2Count++;  // Increment global ring2 count
        }
		else if(global.activeRing2 == "ring1")
        {
            ds_list_add(global.inventory, "ring1");
            global.ring1Count++;  // Increment global ring2 count
        }
        else if(global.activeRing2 == "ring3")
        {
            ds_list_add(global.inventory, "ring3");
            global.ring3Count++;  // Increment global ring3 count
        }
        else if(global.activeRing2 == "ring4")
        {
            ds_list_add(global.inventory, "ring4");
            global.ring4Count++;  // Increment global ring4 count
        }
        else if(global.activeRing2 == "ring5")
        {
            ds_list_add(global.inventory, "ring5");
            global.ring5Count++;  // Increment global ring5 count
        }
        global.activeRing2 = undefined;
    }

    var ring1index = ds_list_find_index(global.inventory, "ring1");
    if (ring1index != -1)
    {
        ds_list_delete(global.inventory, ring1index);
        global.ring1Count--;
    }

    //add to equipped
    if(first)
	{
        array_set(obj_ui.spotsEquipped,0, "ring1");
		global.activeRing1 = "ring1";
	}
    else if(second)
	{
        array_set(obj_ui.spotsEquipped,1, "ring1");
		global.activeRing2 = "ring1";
	}
}

if(name == "ring2")
{
    var first = false;
    var second = false;
    if(array_get(obj_ui.spotsEquipped, 0) == 0)
        first = true;
    else if(array_get(obj_ui.spotsEquipped, 1) == 0)
        second = true;
    else
        first = true;

    if(first)
    {
        if(global.activeRing1 == "ring1")
        {
            ds_list_add(global.inventory, "ring1");
            global.ring1Count++;  // Increment global ring1 count
        }
		else if(global.activeRing1 == "ring2")
        {
            ds_list_add(global.inventory, "ring2");
            global.ring2Count++;  // Increment global ring2 count
        }
        else if(global.activeRing1 == "ring3")
        {
            ds_list_add(global.inventory, "ring3");
            global.ring3Count++;  // Increment global ring3 count
        }
        else if(global.activeRing1 == "ring4")
        {
            ds_list_add(global.inventory, "ring4");
            global.ring4Count++;  // Increment global ring4 count
        }
        else if(global.activeRing1 == "ring5")
        {
            ds_list_add(global.inventory, "ring5");
            global.ring5Count++;  // Increment global ring5 count
        }
        global.activeRing1 = undefined;
    }
    else if(second)
    {
        if(global.activeRing2 == "ring1")
        {
            ds_list_add(global.inventory, "ring1");
            global.ring1Count++;  // Increment global ring1 count
        }
		else if(global.activeRing2 == "ring2")
        {
            ds_list_add(global.inventory, "ring2");
            global.ring2Count++;  // Increment global ring2 count
        }
        else if(global.activeRing2 == "ring3")
        {
            ds_list_add(global.inventory, "ring3");
            global.ring3Count++;  // Increment global ring3 count
        }
        else if(global.activeRing2 == "ring4")
        {
            ds_list_add(global.inventory, "ring4");
            global.ring4Count++;  // Increment global ring4 count
        }
        else if(global.activeRing2 == "ring5")
        {
            ds_list_add(global.inventory, "ring5");
            global.ring5Count++;  // Increment global ring5 count
        }
        global.activeRing2 = undefined;
    }

    var ring2index = ds_list_find_index(global.inventory, "ring2");
    if (ring2index != -1)
    {
        ds_list_delete(global.inventory, ring2index);
        global.ring2Count--;
    }

    //add to equipped
        if(first)
	{
        array_set(obj_ui.spotsEquipped,0, "ring2");
		global.activeRing1 = "ring2";
	}
    else if(second)
	{
        array_set(obj_ui.spotsEquipped,1, "ring2");
		global.activeRing2 = "ring2";
	}
}


if(name == "ring3")
{
    var first = false;
    var second = false;
    if(array_get(obj_ui.spotsEquipped, 0) == 0)
        first = true;
    else if(array_get(obj_ui.spotsEquipped, 1) == 0)
        second = true;
    else
        first = true;

    if(first)
    {
        if(global.activeRing1 == "ring2")
        {
            for(var i = 0; i < global.ring2Count; i++)
            {
                ds_list_add(global.inventory, "ring2");
                global.ring2Count++;  // Increment the count
            }
        }
        else if(global.activeRing1 == "ring1")
        {
            for(var i = 0; i < global.ring1Count; i++)
            {
                ds_list_add(global.inventory, "ring1");
                global.ring1Count++;  // Increment the count
            }
        }
		else if(global.activeRing1 == "ring3")
        {
            ds_list_add(global.inventory, "ring3");
            global.ring3Count++;  // Increment global ring3 count
        }
        else if(global.activeRing1 == "ring4")
        {
            for(var i = 0; i < global.ring4Count; i++)
            {
                ds_list_add(global.inventory, "ring4");
                global.ring4Count++;  // Increment the count
            }
        }
        else if(global.activeRing1 == "ring5")
        {
            for(var i = 0; i < global.ring5Count; i++)
            {
                ds_list_add(global.inventory, "ring5");
                global.ring5Count++;  // Increment the count
            }
        }
        global.activeRing1 = undefined;
    }
    else if(second)
    {
        if(global.activeRing2 == "ring2")
        {
            for(var i = 0; i < global.ring2Count; i++)
            {
                ds_list_add(global.inventory, "ring2");
                global.ring2Count++;  // Increment the count
            }
        }
        else if(global.activeRing2 == "ring1")
        {
            for(var i = 0; i < global.ring1Count; i++)
            {
                ds_list_add(global.inventory, "ring1");
                global.ring1Count++;  // Increment the count
            }
        }
		 else if(global.activeRing2 == "ring3")
        {
            ds_list_add(global.inventory, "ring3");
            global.ring3Count++;  // Increment global ring3 count
        }
        else if(global.activeRing2 == "ring4")
        {
            for(var i = 0; i < global.ring4Count; i++)
            {
                ds_list_add(global.inventory, "ring4");
                global.ring4Count++;  // Increment the count
            }
        }
        else if(global.activeRing2 == "ring5")
        {
            for(var i = 0; i < global.ring5Count; i++)
            {
                ds_list_add(global.inventory, "ring5");
                global.ring5Count++;  // Increment the count
            }
        }
        global.activeRing2 = undefined;
    }

    var ring3index = ds_list_find_index(global.inventory, "ring3");
    if (ring3index != -1)
    {
        ds_list_delete(global.inventory, ring3index);
        global.ring3Count--;
    }

    //add to equipped
    if(first)
	{
        array_set(obj_ui.spotsEquipped,0, "ring3");
		global.activeRing1 = "ring3";
	}
    else if(second)
	{
        array_set(obj_ui.spotsEquipped,1, "ring3");
		global.activeRing2 = "ring3";
	}
}

if(name == "ring4")
{
    var first = false;
    var second = false;
    if(array_get(obj_ui.spotsEquipped, 0) == 0)
        first = true;
    else if(array_get(obj_ui.spotsEquipped, 1) == 0)
        second = true;
    else
        first = true;

    if(first)
    {
        if(global.activeRing1 == "ring2")
        {
            for(var i = 0; i < global.ring2Count; i++)
            {
                ds_list_add(global.inventory, "ring2");
                global.ring2Count++;  // Increment the count
            }
        }
        else if(global.activeRing1 == "ring3")
        {
            for(var i = 0; i < global.ring3Count; i++)
            {
                ds_list_add(global.inventory, "ring3");
                global.ring3Count++;  // Increment the count
            }
        }
        else if(global.activeRing1 == "ring1")
        {
            for(var i = 0; i < global.ring1Count; i++)
            {
                ds_list_add(global.inventory, "ring1");
                global.ring1Count++;  // Increment the count
            }
        }
		else if(global.activeRing1 == "ring4")
        {
            for(var i = 0; i < global.ring4Count; i++)
            {
                ds_list_add(global.inventory, "ring4");
                global.ring4Count++;  // Increment the count
            }
        }
        else if(global.activeRing1 == "ring5")
        {
            for(var i = 0; i < global.ring5Count; i++)
            {
                ds_list_add(global.inventory, "ring5");
                global.ring5Count++;  // Increment the count
            }
        }
        global.activeRing1 = undefined;
    }
    else if(second)
    {
        if(global.activeRing2 == "ring2")
        {
            for(var i = 0; i < global.ring2Count; i++)
            {
                ds_list_add(global.inventory, "ring2");
                global.ring2Count++;  // Increment the count
            }
        }
        else if(global.activeRing2 == "ring3")
        {
            for(var i = 0; i < global.ring3Count; i++)
            {
                ds_list_add(global.inventory, "ring3");
                global.ring3Count++;  // Increment the count
            }
        }
        else if(global.activeRing2 == "ring1")
        {
            for(var i = 0; i < global.ring1Count; i++)
            {
                ds_list_add(global.inventory, "ring1");
                global.ring1Count++;  // Increment the count
            }
        }
		else if(global.activeRing2 == "ring4")
        {
            for(var i = 0; i < global.ring4Count; i++)
            {
                ds_list_add(global.inventory, "ring4");
                global.ring4Count++;  // Increment the count
            }
        }
        else if(global.activeRing2 == "ring5")
        {
            for(var i = 0; i < global.ring5Count; i++)
            {
                ds_list_add(global.inventory, "ring5");
                global.ring5Count++;  // Increment the count
            }
        }
        global.activeRing2 = undefined;
    }

    var ring4index = ds_list_find_index(global.inventory, "ring4");
    if (ring4index != -1)
    {
        ds_list_delete(global.inventory, ring4index);
        global.ring4Count--;
    }

    //add to equipped
    if(first)
	{
        array_set(obj_ui.spotsEquipped,0, "ring4");
		global.activeRing1 = "ring4";
	}
    else if(second)
	{
        array_set(obj_ui.spotsEquipped,1, "ring4");
		global.activeRing2 = "ring4";
	}
}

if(name == "ring5")
{
    var first = false;
    var second = false;
    if(array_get(obj_ui.spotsEquipped, 0) == 0)
        first = true;
    else if(array_get(obj_ui.spotsEquipped, 1) == 0)
        second = true;
    else
        first = true;

    if(first)
    {
        if(global.activeRing1 == "ring2")
        {
            for(var i = 0; i < global.ring2Count; i++)
            {
                ds_list_add(global.inventory, "ring2");
                global.ring2Count++;  // Increment the count
            }
        }
        else if(global.activeRing1 == "ring3")
        {
            for(var i = 0; i < global.ring3Count; i++)
            {
                ds_list_add(global.inventory, "ring3");
                global.ring3Count++;  // Increment the count
            }
        }
        else if(global.activeRing1 == "ring4")
        {
            for(var i = 0; i < global.ring4Count; i++)
            {
                ds_list_add(global.inventory, "ring4");
                global.ring4Count++;  // Increment the count
            }
        }
        else if(global.activeRing1 == "ring1")
        {
            for(var i = 0; i < global.ring1Count; i++)
            {
                ds_list_add(global.inventory, "ring1");
                global.ring1Count++;  // Increment the count
            }
        }
		else if(global.activeRing1 == "ring5")
        {
            for(var i = 0; i < global.ring5Count; i++)
            {
                ds_list_add(global.inventory, "ring5");
                global.ring5Count++;  // Increment the count
            }
        }
        global.activeRing1 = undefined;
    }
    else if(second)
    {
        if(global.activeRing2 == "ring2")
        {
            for(var i = 0; i < global.ring2Count; i++)
            {
                ds_list_add(global.inventory, "ring2");
                global.ring2Count++;  // Increment the count
            }
        }
        else if(global.activeRing2 == "ring3")
        {
            for(var i = 0; i < global.ring3Count; i++)
            {
                ds_list_add(global.inventory, "ring3");
                global.ring3Count++;  // Increment the count
            }
        }
        else if(global.activeRing2 == "ring4")
        {
            for(var i = 0; i < global.ring4Count; i++)
            {
                ds_list_add(global.inventory, "ring4");
                global.ring4Count++;  // Increment the count
            }
        }
        else if(global.activeRing2 == "ring1")
        {
            for(var i = 0; i < global.ring1Count; i++)
            {
                ds_list_add(global.inventory, "ring1");
                global.ring1Count++;  // Increment the count
            }
        }
		else if(global.activeRing2 == "ring5")
        {
            for(var i = 0; i < global.ring5Count; i++)
            {
                ds_list_add(global.inventory, "ring5");
                global.ring5Count++;  // Increment the count
            }
        }
        global.activeRing2 = undefined;
    }

    var ring5index = ds_list_find_index(global.inventory, "ring5");
    if (ring5index != -1)
    {
        ds_list_delete(global.inventory, ring5index);
        global.ring5Count--;
    }

    //add to equipped
    if(first)
	{
        array_set(obj_ui.spotsEquipped,0, "ring5");
		global.activeRing1 = "ring5";
	}
    else if(second)
	{
        array_set(obj_ui.spotsEquipped,1, "ring5");
		global.activeRing2 = "ring5";
	}
}
	
	instance_destroy(id, false);
}


