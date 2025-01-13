draw_set_font(Font);
if(inventoryOpen)
{
	draw_text_transformed_color(50, 211,string(global.hp) + "/" + string(global.hp_max),0.75,0.75,image_angle,c_white,c_white,c_white,c_white,image_alpha);
	draw_text_transformed_color(50, 194,string(global.damage),0.75,0.75,image_angle,c_white,c_white,c_white,c_white,image_alpha);
	draw_text_transformed_color(50, 230,string(global.crit) + "%",0.75,0.75,image_angle,c_white,c_white,c_white,c_white,image_alpha);
	
	for(var h = 0; h < ds_grid_height(spotsTaken); h++)
	{
		for(var w = 0; w < ds_grid_width(spotsTaken); w++)
		{
			if(spotsTaken[# w,h] == "potion2" && global.potionCount2 > 1)
			{
				draw_text_transformed_color(22 + (w*27), 75 + (h*26),"x" + string(global.potionCount2),0.75,0.75,image_angle,c_white,c_white,c_white,c_white,image_alpha);
			}
			else if(spotsTaken[# w,h] == "potion" && global.potionCount1 > 1)
			{
				draw_text_transformed_color(22 + (w*27), 75 + (h*26),"x" + string(global.potionCount1),0.75,0.75,image_angle,c_white,c_white,c_white,c_white,image_alpha);
			}
			else if(spotsTaken[# w,h] == "arrow" && global.arrowCount > 1)
			{
				draw_text_transformed_color(22 + (w*27), 75 + (h*26),"x" + string(global.arrowCount),0.75,0.75,image_angle,c_white,c_white,c_white,c_white,image_alpha);
			}
			else if(spotsTaken[# w,h] == "arrow2" && global.arrowCount2 > 1)
			{
				draw_text_transformed_color(22 + (w*27), 75 + (h*26),"x" + string(global.arrowCount2),0.75,0.75,image_angle,c_white,c_white,c_white,c_white,image_alpha);
			}
			else if(spotsTaken[# w,h] == "arrow3" && global.arrowCount3 > 1)
			{
				draw_text_transformed_color(22 + (w*27), 75 + (h*26),"x" + string(global.arrowCount3),0.75,0.75,image_angle,c_white,c_white,c_white,c_white,image_alpha);
			}
			else if(spotsTaken[# w,h] == "key" && global.keyCount > 1)
			{
				draw_text_transformed_color(22 + (w*27), 75 + (h*26),"x" + string(global.keyCount),0.75,0.75,image_angle,c_white,c_white,c_white,c_white,image_alpha);
			}
			else if(spotsTaken[# w,h] == "sword1" && global.sword1Count > 1)
			{
				draw_text_transformed_color(22 + (w*27), 75 + (h*26),"x" + string(global.sword1Count),0.75,0.75,image_angle,c_white,c_white,c_white,c_white,image_alpha);
			}
			else if(spotsTaken[# w,h] == "sword2" && global.sword2Count > 1)
			{
				draw_text_transformed_color(22 + (w*27), 75 + (h*26),"x" + string(global.sword2Count),0.75,0.75,image_angle,c_white,c_white,c_white,c_white,image_alpha);
			}
			else if(spotsTaken[# w,h] == "sword3" && global.sword3Count > 1)
			{
				draw_text_transformed_color(22 + (w*27), 75 + (h*26),"x" + string(global.sword3Count),0.75,0.75,image_angle,c_white,c_white,c_white,c_white,image_alpha);
			}
			else if(spotsTaken[# w,h] == "sword4" && global.sword4Count > 1)
			{
				draw_text_transformed_color(22 + (w*27), 75 + (h*26),"x" + string(global.sword4Count),0.75,0.75,image_angle,c_white,c_white,c_white,c_white,image_alpha);
			}
			else if(spotsTaken[# w,h] == "armor1" && global.armor1Count > 1)
			{
				draw_text_transformed_color(22 + (w*27), 75 + (h*26),"x" + string(global.armor1Count),0.75,0.75,image_angle,c_white,c_white,c_white,c_white,image_alpha);
			}
			else if(spotsTaken[# w,h] == "armor2" && global.armor2Count > 1)
			{
				draw_text_transformed_color(22 + (w*27), 75 + (h*26),"x" + string(global.armor2Count),0.75,0.75,image_angle,c_white,c_white,c_white,c_white,image_alpha);
			}
			else if(spotsTaken[# w,h] == "armor3" && global.armor3Count > 1)
			{
				draw_text_transformed_color(22 + (w*27), 75 + (h*26),"x" + string(global.armor3Count),0.75,0.75,image_angle,c_white,c_white,c_white,c_white,image_alpha);
			}
			else if(spotsTaken[# w,h] == "armor4" && global.armor4Count > 1)
			{
				draw_text_transformed_color(22 + (w*27), 75 + (h*26),"x" + string(global.armor4Count),0.75,0.75,image_angle,c_white,c_white,c_white,c_white,image_alpha);
			}
			else if(spotsTaken[# w,h] == "ring1" && global.ring1Count > 1)
			{
				draw_text_transformed_color(22 + (w*27), 75 + (h*26),"x" + string(global.ring1Count),0.75,0.75,image_angle,c_white,c_white,c_white,c_white,image_alpha);
			}
			else if(spotsTaken[# w,h] == "ring2" && global.ring2Count > 1)
			{
				draw_text_transformed_color(22 + (w*27), 75 + (h*26),"x" + string(global.ring2Count),0.75,0.75,image_angle,c_white,c_white,c_white,c_white,image_alpha);
			}
			else if(spotsTaken[# w,h] == "ring3" && global.ring3Count > 1)
			{
				draw_text_transformed_color(22 + (w*27), 75 + (h*26),"x" + string(global.ring3Count),0.75,0.75,image_angle,c_white,c_white,c_white,c_white,image_alpha);
			}
			else if(spotsTaken[# w,h] == "ring4" && global.ring4Count > 1)
			{
				draw_text_transformed_color(22 + (w*27), 75 + (h*26),"x" + string(global.ring4Count),0.75,0.75,image_angle,c_white,c_white,c_white,c_white,image_alpha);
			}
			else if(spotsTaken[# w,h] == "ring5" && global.ring5Count > 1)
			{
				draw_text_transformed_color(22 + (w*27), 75 + (h*26),"x" + string(global.ring5Count),0.75,0.75,image_angle,c_white,c_white,c_white,c_white,image_alpha);
			}
		}
	}
	
	for(var i = 0; i < array_length(spotsEquipped); i++)
	{
		if(array_get(spotsEquipped, i) == "arrow" && global.arrowCount > -1)
		{
			draw_text_transformed_color(78, 303,"x" + string(global.arrowCount),0.75,0.75,image_angle,c_white,c_white,c_white,c_white,image_alpha);
		}
		else if(array_get(spotsEquipped, i) == "arrow2" && global.arrowCount2 > -1)
		{
			draw_text_transformed_color(78, 303,"x" + string(global.arrowCount2),0.75,0.75,image_angle,c_white,c_white,c_white,c_white,image_alpha);
		}
		else if(array_get(spotsEquipped, i) == "arrow3" && global.arrowCount3 > -1)
		{
			draw_text_transformed_color(78, 303,"x" + string(global.arrowCount3),0.75,0.75,image_angle,c_white,c_white,c_white,c_white,image_alpha);
		}
	}

}