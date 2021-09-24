//meant for the enemy to see if the place is free and then go to the player
//code checks to see if there is not a collision to the left of the instance and moves the instance if there is none.
if (place_free(x, y - collisionSpeed))
{
	y -= spd;
	if(instance_exists(obj_Player))
	{
		move_towards_point(obj_Player.x - 5, obj_Player.y - 5, spd);
	}
}
if (place_free(x, y + collisionSpeed))
{
	y += spd;
	if(instance_exists(obj_Player))
	{
		move_towards_point(obj_Player.x - 5, obj_Player.y - 5, spd);
	}
}

if (place_free(x - collisionSpeed, y))
{
	x -= spd;
	if(instance_exists(obj_Player))
	{
		move_towards_point(obj_Player.x - 5, obj_Player.y - 5, spd);
	}
}

if (place_free(x + collisionSpeed, y))
{
	x += spd;
	if(instance_exists(obj_Player))
	{
		move_towards_point(obj_Player.x - 5, obj_Player.y - 5, spd);
	}
}

//to rotate
image_angle = direction;

//check hp, destroy if no hp
if(hp<=0)
{
	//meant to set up the loot drop of the enemies
	//the random(100) is to set up a precent for if it drops
	var LootDrop =  random(100);
	//while the if statment uses the percent to make a percent chance it drops
	if (LootDrop >= 25)
	{
		instance_create_layer(x,y,"Instances", obj_Coin);
	}
	//instance_create_layer(x,y,"Instances", obj.Dust);
	
	instance_destroy();
}

