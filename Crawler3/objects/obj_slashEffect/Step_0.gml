if(!instance_exists(objectToFollow))
{
	
}
else if(string(object_get_name(objectToFollow.object_index)) != "obj_box1")
{
	x = objectToFollow.x;
	y = objectToFollow.y;
}
else
{
	x = objectToFollow.x + 16;
	y = objectToFollow.y + 16;
}

image_alpha -= 0.05;

if(image_alpha < 0.5)
{
	instance_destroy(id);
}