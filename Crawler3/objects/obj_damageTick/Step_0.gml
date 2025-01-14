if(!instance_exists(objectToFollow))
{
	
}
else
{
	x = objectToFollow.x;
	y = objectToFollow.y;
}

//image_alpha -= 0.05;
yvalue += 0.3;

if(yvalue >= 45)
{
	instance_destroy(id, false);
}

if(yvalue >= 36)
{
	image_alpha -= 0.05;
}

