if(hp <= 0)
{
	//die
	if(!death)
	{
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
	}
	instance_destroy(border);
	instance_destroy(healthIm);
	sprite_index = spr_enemy2Death;
}
else
{
	if(global.turn != last_turn_num)
	{
	
	   //list to store the found path
	    var path = find_path((x - 16 - (room_width div 4)) div 32, (y - 16 - (room_height div 4)) div 32, (obj_player.x - (room_width div 4)) div 32, (obj_player.y - (room_height div 4)) div 32);
		
		//show_debug_message("path: " + string(path));
	
	   //get the movement out of the list
	   if(path != undefined)
	   {   
		   var position = path[1];
		   var move_x = string_copy(position, 1, string_last_pos("_", position) - 1);
		   var move_y = string_copy(position,  string_last_pos("_", position) + 1, string_length(position));
		   if((x - 16 - (room_width div 4)) div 32 == (obj_player.x - 16 - (room_width div 4)) div 32 || (y - 16 - (room_height div 4)) div 32 == (obj_player.y - 16 - (room_height div 4)) div 32)
		   {
				var fireball = instance_create_layer(x, y, "Instances_projectiles", obj_fireball);
				if((x - 16 - (room_width div 4)) div 32 == (obj_player.x - 16 - (room_width div 4)) div 32 && y > obj_player.y)
				{
					fireball.image_angle = 90;
					fireball.vspeed = -5;
				}
				else if((x - 16 - (room_width div 4)) div 32 == (obj_player.x - 16 - (room_width div 4)) div 32 && y < obj_player.y)
				{
					fireball.image_angle = 270;
					fireball.vspeed = 5;
				}
				else if((y - 16 - (room_height div 4)) div 32 == (obj_player.y - 16 - (room_height div 4)) div 32 && x > obj_player.x)
				{
					fireball.image_angle = 180;
					fireball.speed = -5;
				}
				else if((y - 16 - (room_height div 4)) div 32 == (obj_player.y - 16 - (room_height div 4)) div 32 && x < obj_player.x)
				{
					fireball.image_angle = 360;
					fireball.speed = 5;
				}
				else
				{
					//default to right if problem
					//fireball.image_angle = 360;
					//fireball.speed = 5;
				}
					checkifMove = false;
					attacking = true;
		   }
		   else if(global.gridRes[# move_x, move_y] == 0)
		   {
			   global.gridRes[# move_x, move_y] = 1;
			   global.gridRes[# ((x - 16 - (room_width div 4)) div 32), ((y - 16 - (room_height div 4)) div 32)] = 0;
			   checkifMove = true
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
		    left_move_progress++;
		    var _progress_factor = left_move_progress / left_move_target;
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
		    right_move_progress++;
		    var _progress_factor = right_move_progress / right_move_target;
		    x = round(lerp(right_start_x, right_end_x, _progress_factor));
		    y = round(lerp(right_start_y, right_end_y, _progress_factor));
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
		    up_move_progress++;
		    var _progress_factor = up_move_progress / up_move_target;
		    x = round(lerp(up_start_x, up_end_x, _progress_factor));
		    y = round(lerp(up_start_y, up_end_y, _progress_factor));
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
		    down_move_progress++;
		    var _progress_factor = down_move_progress / down_move_target;
		    x = round(lerp(down_start_x, down_end_x, _progress_factor));
		    y = round(lerp(down_start_y, down_end_y, _progress_factor));
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


		//update health position
		if(hp > hp_max)
		{
			hp = hp_max;
		}
		//draw health bar
		healthIm.image_xscale = (hp/hp_max) * healthBar_width;
		healthIm.image_yscale = 1.5;

		healthIm.x = x - 25;
		healthIm.y = y - 15;
		border.x = x - 26;
		border.y = y - 15;

	if(damaged && !isAttacking)
	{
		image_index = 0;
		damaged = false;
		isDamaged = true;
		sprite_index = spr_enemy2Damage;
	}
	else if(attacking && !isDamaged)
	{
		image_index = 0;
		attacking = false;
		isAttacking = true;
		sprite_index = spr_enemy2Attack;
	}

	if(sprite_index == spr_enemy2Damage && image_index >= 2 && isDamaged)
	{
		damaged = false;
		isDamaged = false;
		sprite_index = spr_enemy2;
	}
	if(sprite_index == spr_enemy2Attack && image_index >= 2 && isAttacking)
	{
		attacking = false;
		isAttacking = false;
		sprite_index = spr_enemy2;
	}

	if(sprite_index == spr_enemy2Attack && !isAttacking && !attacking)
	{
		sprite_index = spr_enemy2;
	}

	checkifMove = false;
}

if(sprite_index == spr_enemy2Death && image_index >= 3 && death)
{
	instance_destroy(id, false);
}