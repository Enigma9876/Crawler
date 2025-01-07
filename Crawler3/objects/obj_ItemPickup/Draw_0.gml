draw_set_font(Font);
if(rarity == "common")
	draw_text_transformed_color(xvalue, y - yvalue,text,1,1,image_angle,c_blue,c_blue,c_blue,c_blue,image_alpha);
else if(rarity == "epic")
	draw_text_transformed_color(xvalue, y - yvalue,text,1,1,image_angle,c_purple,c_purple,c_purple,c_purple,image_alpha);
else if(rarity == "ledgendary")
	draw_text_transformed_color(xvalue, y - yvalue,text,1,1,image_angle,c_yellow,c_yellow,c_yellow,c_yellow,image_alpha);
else
	draw_text_transformed_color(xvalue, y - yvalue,text,1,1,image_angle,c_white,c_white,c_white,c_white,image_alpha);