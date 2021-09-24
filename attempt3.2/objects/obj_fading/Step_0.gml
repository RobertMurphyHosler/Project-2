
//to have the back of somthing fade when the player goes behind it
if(collision_circle(x, y, 15, obj_Player, true, true))
{
	image_alpha = 0.25;
}

else
{
	image_alpha = 1;
}




