// Calculate the angle to shoot the arrow based on arrowdirx and arrowdiry
var angle_to_target = point_direction(x, y, arrowdirx, arrowdiry);

// Create the arrow instance
var arrow = instance_create_layer(x, y, "Instances_projectiles", obj_arrowFire);

// Set the arrow's image angle to face the target direction, adjusted by 45 degrees
arrow.image_angle = angle_to_target - 45; // Adjust by 45 degrees to correct the tilt

// Set the arrow's speed and direction
arrow.direction = angle_to_target;
arrow.speed = 10; // Set this to the desired speed

// Update arrow count and turn
global.turn++;
global.arrowCount--;