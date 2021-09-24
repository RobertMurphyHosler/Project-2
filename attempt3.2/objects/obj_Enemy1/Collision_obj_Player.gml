//to set the collision of the enemey, to damage the player
/*
if((obj_Player.x - obj_Enemy1.x <= 5)  and (obj_Player.y - obj_Enemy1.y <= 5));
{
	obj_Player.playerHp = obj_Player.playerHp - 25;
}
*/

with(obj_Player)
{
	//meant to get the distance between the player and enemey
	distx = obj_Enemy1.x - obj_Player.x
	disty = obj_Enemy1.y - obj_Player.y
	range = 5
	
	//use distance formula based on rumbaughs advice
	/*
	if distance_to_object(obj_Player) < range
	{
		obj_Player.playerHp = obj_Player.playerHp - 25;
	}
	*/
	if( distx <= 5 and disty <= 5)
	{
		spd = 0.001
		//distx = obj_Enemy1.y + 5
		//disty = obj_Enemy1.y + 5
		obj_Player.playerHp = obj_Player.playerHp - 2;
	}
	
}

//instance_destroy();
