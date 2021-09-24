//to set the collision of the enemey, to damage the player
with(obj_Player)
{
	if ((obj_Enemy2.x - obj_Player.x <= 25) and (obj_Enemy2.x - obj_Player.x <= 25))
	{
		obj_Player.playerHp = obj_Player.playerHp - 25;
	}
	//obj_Player.playerHp = obj_Player.playerHp - 25;
}

instance_destroy();
