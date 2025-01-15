draw_set_font(Font);
draw_self();

draw_text_transformed_color(x - 128, y - 192, "You Died",5,5,image_angle, c_white,c_white,c_white,c_white, image_alpha);
if(room == rm_level1)
	draw_text_transformed_color(x - 128, y - 64, "Room Level: " + string(global.levelCount),3,3,image_angle, c_white,c_white,c_white,c_white, image_alpha);
else if(room == rm_tutorialRoom)
	draw_text_transformed_color(x - 128, y - 64, "Room Level: Tutorial",3,3,image_angle, c_white,c_white,c_white,c_white, image_alpha);	
