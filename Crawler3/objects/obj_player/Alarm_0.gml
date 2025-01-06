var arrow = instance_create_layer(x, y, "Instances_projectiles", obj_arrowFire);
			if(arrowdirx = -32 && arrowdiry = 0)
			{
				arrow.image_angle = 135;
				arrow.speed = -10;
			}
			else if(arrowdirx = 32 && arrowdiry = 0)
			{
				arrow.image_angle = 315;
				arrow.speed = 10;
			}
			else if(arrowdirx = 0 && arrowdiry = 32)
			{
				arrow.image_angle = 225;
				arrow.vspeed = 10;
			}
			else if(arrowdirx = 0 && arrowdiry = -32)
			{
				arrow.image_angle = 45;
				arrow.vspeed = -10;
			}
			else
			{
				//default to right if problem
				arrow.image_angle = 315;
				arrow.speed = 10;
			}
			
			
			//delete arrow from amount
			global.turn++;
			global.arrowCount--;