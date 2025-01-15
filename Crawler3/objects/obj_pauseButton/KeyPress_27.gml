if(instance_exists(pauseScreen))
		{
			global.override = false;
			global.pause = false;
			instance_destroy(pauseScreen.id,true);
		}
			image_index = 0;
