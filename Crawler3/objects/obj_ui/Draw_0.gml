draw_set_font(Font);

if(global.activeArrow == 1)
{
	arrow3.image_index = 1;
	arrow.image_index = 0;
	arrow2.image_index = 1;
	if(global.arrowCount > 99)
	{
		draw_text(x - 5, y + 10, "x99+");
	}
	else
	{
		draw_text(x - 5, y + 10, "x" + string(global.arrowCount));
	}
}
else if(global.activeArrow == 2)
{
	arrow3.image_index = 1;
	arrow2.image_index = 0;
	arrow.image_index = 1;
	if(global.arrowCount2 > 99)
	{
		draw_text(x - 5, y + 10, "x99+");
	}
	else
	{
		draw_text(x - 5, y + 10, "x" + string(global.arrowCount2));
	}
}
else if(global.activeArrow == 3)
{
	arrow3.image_index = 0;
	arrow2.image_index = 1;
	arrow.image_index = 1;
	if(global.arrowCount3 > 99)
	{
		draw_text(x - 5, y + 10, "x99+");
	}
	else
	{
		draw_text(x - 5, y + 10, "x" + string(global.arrowCount3));
	}
}


draw_text(5, 45, "E");
draw_text(50, 45, "Q");