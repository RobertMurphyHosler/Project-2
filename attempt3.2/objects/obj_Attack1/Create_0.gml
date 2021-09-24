//to scale the basic attack size
image_xscale = 0.5;
image_yscale = 0.5;

// set attack power
AttackPower = 5;

//to set up your own speed for the attack
AttackSpeed = 4;

//set direction of attack from its current point to mouse point
direction = point_direction(x, y, mouse_x, mouse_y);

//to set a scatter effect for the attack
direction = direction + random_range(-5, 5);

//set up speed, could use the built in speed called speed
speed = AttackSpeed;

//to have the attack spin in an angle, using the second direction
image_angle = direction;
