draw_set_font(Font);

if(global.activeItem == 1)
{
	arrow3.visible = false;
	arrow.visible = true;
	arrow2.visible = false;
	potion1.visible = false;
	potion2.visible = false;
	potion.visible = false;
	bow.visible = true;
	if(global.arrowCount > 99)
	{
		draw_text(x - 5, y + 10, "x99+");
	}
	else
	{
		draw_text(x - 5, y + 10, "x" + string(global.arrowCount));
	}
}
else if(global.activeItem == 2)
{
	arrow3.visible = false;
	arrow.visible = false;
	arrow2.visible = true;
	potion1.visible = false;
	potion2.visible = false;
	potion.visible = false;
	bow.visible = true;
	if(global.arrowCount2 > 99)
	{
		draw_text(x - 5, y + 10, "x99+");
	}
	else
	{
		draw_text(x - 5, y + 10, "x" + string(global.arrowCount2));
	}
}
else if(global.activeItem == 3)
{
	arrow3.visible = true;
	arrow.visible = false;
	arrow2.visible = false;
	potion1.visible = false;
	potion2.visible = false;
	potion.visible = false;
	bow.visible = true;
	if(global.arrowCount3 > 99)
	{
		draw_text(x - 5, y + 10, "x99+");
	}
	else
	{
		draw_text(x - 5, y + 10, "x" + string(global.arrowCount3));
	}
}
else if(global.activeItem == 4)
{
	arrow3.visible = false;
	arrow.visible = false;
	arrow2.visible = false;
	potion1.visible = true;
	potion2.visible = false;
	potion.visible = true;
	bow.visible = false;
	if(global.potionCount1 > 99)
	{
		draw_text(x - 5, y + 10, "x99+");
	}
	else
	{
		draw_text(x - 5, y + 10, "x" + string(global.potionCount1));
	}
		
}
else if(global.activeItem == 5)
{
	potion.visible = true;
	bow.visible = false;
	arrow3.visible = false;
	arrow.visible = false;
	arrow2.visible = false;
	potion1.visible = false;
	potion2.visible = true;
	if(global.potionCount2 > 99)
	{
		draw_text(x - 5, y + 10, "x99+");
	}
	else
	{
		draw_text(x - 5, y + 10, "x" + string(global.potionCount2));
	}
		
}


//display key 1
if(global.keyCount > 99)
	{
		draw_text(x - 5, y + 50, "x99+");
	}
	else
	{
		draw_text(x - 5, y + 50, "x" + string(global.keyCount));
	}


draw_text(5, 45, "E");
draw_text(50, 45, "Q");