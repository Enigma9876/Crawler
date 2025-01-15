if(!global.death)
{
	global.pause = !global.pause;
	if(global.pause)
	{
		image_index = 1;
		global.override = false;
		pauseScreen = instance_create_layer(obj_player.x,obj_player.y,"Instances_pauseScreen", obj_pauseScreen);
	}
	else
	{
		if(instance_exists(pauseScreen))
		{
			global.override = false;
			instance_destroy(pauseScreen.id,true);
		}
			image_index = 0;
	}
}