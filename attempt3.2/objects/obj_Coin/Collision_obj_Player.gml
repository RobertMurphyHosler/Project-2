//adds the coin to the player
with(obj_status)
{
	MaxCoins = 3;
	if Coins < MaxCoins()
	{
		Coins = Coins+1;
	}
	else Coins = MaxCoins()
	{
		instance_create_layer(x,y,"Instances", obj_Full);	
	}
}

instance_create_layer(x,y, "Instances",obj_collectitem);
instance_destroy();



