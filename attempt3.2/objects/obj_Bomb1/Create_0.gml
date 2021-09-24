//to scale the basic attack size
image_xscale = 2;
image_yscale = 2;

// set attack power
BombPower = irandom_range(20, 30);

//to set up your own speed for the attack
BombSpeed = 2;

//set direction of attack from its current point to mouse point
direction = point_direction(x, y, mouse_x, mouse_y);

//to set a scatter effect for the attack
direction = direction + random_range(-5, 5);

//set up speed, could use the built in speed called speed
speed = BombSpeed;

//to have the attack spin in an angle, using the second direction
image_angle = direction;
