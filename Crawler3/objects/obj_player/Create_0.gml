//bugs: leaves intial position marked as non-moveable upon the fist movement, enemy and player can overlap, push through left wall
xprevious2 = x;
yprevious2 = y;
Move_left = false;
Move_right = false;
Move_up = false;
Move_down = false;

left_values = true;
right_values = true;
up_values = true;
down_values = true;

left_start_x = 0;
left_end_x = 0;
left_start_y = 0;
left_end_y = 0;

right_start_x = 0;
right_end_x = 0;
right_start_y = 0;
right_end_y = 0;

up_start_x = 0;
up_end_x = 0;
up_start_y = 0;
up_end_y = 0;

down_start_x = 0;
down_end_x = 0;
down_start_y = 0;
down_end_y = 0;

left_move_progress = 0;
left_move_target = 5; //change based on 60 -> 1 second
right_move_progress = 0;
right_move_target = 5; //change based on 60 -> 1 second
up_move_progress = 0;
up_move_target = 5; //change based on 60 -> 1 second
down_move_progress = 0;
down_move_target = 5; //change based on 60 -> 1 second


canMove = true;
inalarm = false;
