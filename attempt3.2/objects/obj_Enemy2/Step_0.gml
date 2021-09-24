//if player exists, enemy moves toward their x,y cords and takes a spd variable
if(instance_exists(obj_Player))
{
	move_towards_point(obj_Player.x, obj_Player.y, spd);

}

//to rotate
image_angle = direction;

//check hp, destroy if no hp
if(hp<=0)
{
	instance_destroy();
}

