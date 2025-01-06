if(previoushp > hp)
{
	var damageDone = instance_create_layer(x, y, "Instances_Global", obj_damageTick);
	damageDone.text = string(previoushp - hp);
	damageDone.objectToFollow = id;
	var slash = instance_create_layer(x, y, "Instances_Global", obj_slashEffect);
	slash.objectToFollow = id;
}

if(hp <= 0)
{
	//die
	if(!death)
	{
		if(goTowardsPlayer)
		{
			x = attack_start_x;
			y = attack_start_y;
		}
		if(Move_left)
		{
			x = left_end_x;
			y = left_end_y;
		}
		if(Move_right)
		{
			x = right_end_x;
			y = right_end_y;
		}
		if(Move_down)
		{
			x = down_end_x;
			y = down_end_y;
		}
		if(Move_up)
		{
			x = up_end_x;
			y = up_end_y;
		}
		global.gridOrg[# ((x - 16 - (room_width div 4)) div 32), ((y - 16 - (room_height div 4)) div 32)] = 0;
		var rand = irandom_range(1,2);
		if(rand == 1)
		{
			global.gridPow[# ((x - 16 - (room_width div 4)) div 32), ((y - 16 - (room_height div 4)) div 32)] = 6;
			instance_create_layer(x, y , "Instances_Enemies", obj_arrow);
		}
		else if(rand == 2)
		{
			global.gridPow[# ((x - (room_width div 4)) div 32), ((y - (room_height div 4)) div 32)] = 7;
			instance_create_layer(x - 16, y - 16, "Instances_Enemies", obj_potion2);
		}
		death = true;
		sprite_index = spr_enemy1Death;
		image_index = 0;
	}
	instance_destroy(border);
	instance_destroy(healthIm);
}
else
{
	if(global.turn != last_turn_num)
	{
		var playerx = undefined;
		var playery = undefined;
		for(var h = 0; h < ds_grid_height(global.gridOrg); h++)
		{
			for(var w = 0; w < ds_grid_width(global.gridOrg); w++)
			{	
				if(global.gridOrg[# w,h] == 4)
				{
					playerx = w;
					playery = h;
				}
			}
		}
	   //list to store the found path
	    var path = find_path((x - 16 - (room_width div 4)) div 32, (y - 16 - (room_height div 4)) div 32, playerx, playery);
		
		//show_debug_message("path: " + string(path));
	
	   //get the movement out of the list
	   if(path != undefined)
	   {   
		   var position = path[1];
		   var move_x = string_copy(position, 1, string_last_pos("_", position) - 1);
		   var move_y = string_copy(position,  string_last_pos("_", position) + 1, string_length(position));
		   
		   if(global.gridRes[# move_x, move_y] == 0)
		   {
			   global.gridRes[# move_x, move_y] = 1;
			   global.gridRes[# ((x - 16 - (room_width div 4)) div 32), ((y - 16 - (room_height div 4)) div 32)] = 0;
			   checkifMove = true;
		   }
		   if(global.gridOrg[# move_x, move_y] == 4)
		   {
			   if(obj_player.x < x)
			   {
				   image_xscale = -1;
			   }
			   else if(obj_player.x > x)
			   {
				   image_xscale = 1;
			   }
				global.hp -= 7;
				checkifMove = true;
				attacking = true;
				goTowardsPlayer = true;
		   }
		   
		   if(!checkifMove || global.gridOrg[# move_x, move_y] == 4)
		   {
			   //don't move
		   }
		   else
		   {
		   		//move toward player
			   if(move_x == ((x - 16 - (room_width div 4)) div 32))
			   {
				   if(move_y < ((y - 16 - (room_height div 4)) div 32))
				   {
					   Move_up = true;
					  global.gridOrg[# ((x - 16 - (room_width div 4)) div 32), ((y - 16 - (room_height div 4)) div 32)] = 0;
				   }
				   else if(move_y > ((y - 16 - (room_height div 4)) div 32))
				   {
					   Move_down = true;
					   global.gridOrg[# ((x - 16 - (room_width div 4)) div 32), ((y - 16 - (room_height div 4)) div 32)] = 0;
				   }
			   }
			   else if(move_y == ((y - 16 - (room_height div 4)) div 32))
			   {
				   if(move_x > ((x - 16 - (room_width div 4)) div 32))
				   {
					   Move_right = true;
					   image_xscale = 1;
					   global.gridOrg[# ((x - 16 - (room_width div 4)) div 32), ((y - 16 - (room_height div 4)) div 32)] = 0;
				   }
				   else if(move_x < ((x - 16 - (room_width div 4)) div 32))
				   {
					   Move_left = true;
					   image_xscale = -1;
					   global.gridOrg[# ((x - 16 - (room_width div 4)) div 32), ((y - 16 - (room_height div 4)) div 32)] = 0;
				   }
			   }
		   }
	   }
   
	}

	//updates grid
	/*if(xprevious != x || yprevious != y)
	{
		global.grid[# (xprevious - (room_width div 4)) div 32, (yprevious - (room_height div 4)) div 32] = 0;
		global.grid[# (x - (room_width div 4)) div 32, (y - (room_height div 4)) div 32] = 1;
	} */
	last_turn_num = global.turn;

	if(Move_left)
	{
		if(left_values)
		{
			left_start_x = x;
			left_end_x = x - 32;
			left_start_y = y;
			left_end_y = y;
		}
		left_values = false;
		if (left_move_progress < left_move_target)
		{
		    left_move_progress += 1.25;
		    var _progress_factor = (sin(left_move_progress / left_move_target * (pi / 2)));

	        // Apply the easing to the lerp
	        x = round(lerp(left_start_x, left_end_x, _progress_factor));
	        y = round(lerp(left_start_y, left_end_y, _progress_factor));
			isAttacking = false;
			attacking = false;
		}
		else
		{
			Move_left = false;
			left_values = true;
			global.gridOrg[# ((x - 16 - (room_width div 4)) div 32), ((y - 16 - (room_height div 4)) div 32)] = 5;
			left_move_progress = 0;
		}
	}

	if(Move_right)
	{
		if(right_values)
		{
			right_start_x = x;
			right_end_x = x + 32;
			right_start_y = y;
			right_end_y = y;
		}
		right_values = false;
		if (right_move_progress < right_move_target)
		{
		    right_move_progress += 1.25;
		    var _progress_factor_right = (sin(right_move_progress / right_move_target * (pi / 2)));

			// Apply the easing to the lerp for right movement
			x = round(lerp(right_start_x, right_end_x, _progress_factor_right));
			y = round(lerp(right_start_y, right_end_y, _progress_factor_right));
			isAttacking = false;
			attacking = false;
		}
		else
		{
			Move_right = false;
			right_values = true;
			global.gridOrg[# ((x - 16 - (room_width div 4)) div 32), ((y - 16 - (room_height div 4)) div 32)] = 5;
			right_move_progress = 0;
			isAttacking = false;
			attacking = false;
		}
	}

	if(Move_up)
	{
		if(up_values)
		{
			up_start_x = x;
			up_end_x = x;
			up_start_y = y;
			up_end_y = y - 32;
		}
		up_values = false;
		if (up_move_progress < up_move_target)
		{
		    up_move_progress += 1.25;
		    var _progress_factor_up = (sin(up_move_progress / up_move_target * (pi / 2)));

			// Apply the easing to the lerp for up movement
			x = round(lerp(up_start_x, up_end_x, _progress_factor_up));
			y = round(lerp(up_start_y, up_end_y, _progress_factor_up));
			isAttacking = false;
			attacking = false;
		}
		else
		{
			Move_up = false;
			up_values = true;
			global.gridOrg[# ((x - 16 - (room_width div 4)) div 32), ((y - 16 - (room_height div 4)) div 32)] = 5;
			up_move_progress = 0;
		}
	}

	if(Move_down)
	{
		if(down_values)
		{
			down_start_x = x;
			down_end_x = x;
			down_start_y = y;
			down_end_y = y + 32;
		}
		down_values = false;
		if (down_move_progress < down_move_target)
		{
		    down_move_progress += 1.25;
		    var _progress_factor_down = (sin(down_move_progress / down_move_target * (pi / 2)));

			// Apply the easing to the lerp for down movement
			x = round(lerp(down_start_x, down_end_x, _progress_factor_down));
			y = round(lerp(down_start_y, down_end_y, _progress_factor_down));
			isAttacking = false;
			attacking = false;
		}
		else
		{
			Move_down = false;
			down_values = true;
			global.gridOrg[# ((x - 16 - (room_width div 4)) div 32), ((y - 16 - (room_height div 4)) div 32)] = 5;
			down_move_progress = 0;
		}
	}
	
	if(goTowardsPlayer)
	{
		if(attack_values)
		{
			attack_start_x = x;
			if(move_x > (x - 16 - (room_width div 4)) div 32)
			{
				attack_end_x = x + 10;
			}
			else if(move_x < (x - 16 - (room_width div 4)) div 32)
			{
				attack_end_x = x - 10;
			}
			else
			{
				attack_end_x = x;
			}
			attack_start_y = y;
			
			if(move_y > (y - 16 - (room_height div 4)) div 32)
			{
				attack_end_y = y + 10;
			}
			else if(move_y < (y - 16 - (room_height div 4)) div 32)
			{
				attack_end_y = y - 10;
			}
			else
			{
				attack_end_y = y;
			}
		}
		
		attack_values = false;
		
		if(attack_move_progress < attack_move_target && !moveBack)
		{
		    attack_move_progress += 1.25;
		    var _progress_factor_down = (sin(attack_move_progress / attack_move_target * (pi / 2)));

			// Apply the easing to the lerp for down movement
			x = round(lerp(attack_start_x, attack_end_x, _progress_factor_down));
			y = round(lerp(attack_start_y, attack_end_y, _progress_factor_down));
		}
		else if(!moveBack)
		{
			//Move_down = false;
			//down_values = true;
			attack_move_progress = 0;
			moveBack = true;
		}
		
		if(attack_move_progress < attack_move_target && moveBack)
		{
		    attack_move_progress += 1.25;
		    var _progress_factor_down = (sin(attack_move_progress / attack_move_target * (pi / 2)));

			// Apply the easing to the lerp for down movement
			x = round(lerp(attack_end_x, attack_start_x, _progress_factor_down));
			y = round(lerp(attack_end_y, attack_start_y, _progress_factor_down));
		}
		else if(moveBack)
		{
			goTowardsPlayer = false;
			attack_values = true;
			attack_move_progress = 0;
			moveBack = false;
		}
	} 

		//update health position
		if(hp > hp_max)
		{
			hp = hp_max;
		}
		//draw health bar
		healthIm.image_xscale = (hp/hp_max) * healthBar_width;
		healthIm.image_yscale = 1.5;

		healthIm.x = x - 24.8;
		healthIm.y = y - 15;
		border.x = x - 26;
		border.y = y - 15;


	if(sprite_index == spr_enemy1Attack && image_index >= 2 && isAttacking)
	{
		attacking = false;
		isAttacking = false;
		sprite_index = spr_enemy1;
	}

	if(sprite_index == spr_enemy1Attack && !isAttacking && !attacking)
	{
		sprite_index = spr_enemy1;
	}

	checkifMove = false;
}

if(sprite_index == spr_enemy1Death && image_index >= 4 && death)
{
	instance_destroy(id, false);
}

if(sprite_index == spr_enemy1 || sprite_index == spr_enemy1Death)
{
	isIdle = true;
}
else
{
	isIdle = false;
}

previoushp = hp;