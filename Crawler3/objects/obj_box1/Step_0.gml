if(destroy)
{
	if(image_index >= 4)
	{
		stopDestroying = true;
		destroy = false;
		image_index = 4;
	}
	
}
else if(stopDestroying)
{
	image_index = 4;
}
else
{
	image_index = 0;
}