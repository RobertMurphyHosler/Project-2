//if player exists, health bar moves toward their x,y cords and takes a spd variable
hpspd = obj_Player.walkSpeed
if(instance_exists(obj_Player))
{
	move_towards_point(obj_Player.x - 40, obj_Player.y + 60, hpspd);

}

//to rotate
image_angle = direction;
	hp = obj_PlayerHp = obj_Player.playerHp
//to change between the different hp sprites
//have to reference the player object first and then the player hp to access the players hp
	//meant to switch the player hp based on current amount
/*
if(playerHp < 90)
{
	sprite_index = spr_100;
}
else if (playerHp = 90 and playerHp > 80)
{
	sprite_index = spr_90;
}
*/
	if (hp > 90)
	{
		sprite_index = spr_100;
	}
	else if ((obj_Player.playerHp > 80) and (obj_Player.playerHp <= 90)) 
	{
		sprite_index = spr_90;
	}
	else if ((obj_Player.playerHp > 70) and (obj_Player.playerHp <= 80))
	{
		sprite_index = spr_80;
	}
	else if ((obj_Player.playerHp > 60) and (obj_Player.playerHp <= 70)) 
	{
		sprite_index = spr_70;
	}
	else if ((obj_Player.playerHp > 50) and (obj_Player.playerHp <= 60))
	{
		sprite_index = spr_60;
	}
	else if ((obj_Player.playerHp > 40) and (obj_Player.playerHp <= 50)) 
	{
		sprite_index = spr_50;
	}
	else if ((obj_Player.playerHp > 30) and (obj_Player.playerHp <= 40))
	{
		sprite_index = spr_40;
	}
	else if ((obj_Player.playerHp > 20) and (obj_Player.playerHp <= 30)) 
	{
		sprite_index = spr_30;
	}
	else if ((obj_Player.playerHp > 10) and (obj_Player.playerHp <= 20))
	{
		sprite_index = spr_20;
	}
	else if ((obj_Player.playerHp > 0) and (obj_Player.playerHp <= 10))
	{
		sprite_index = spr_10;
	}
	
	/*
	if ((obj_Player.playerHp > 70) and (obj_Player.playerHp <= 70)) spr_curr = spr_70;
	if ((obj_Player.playerHp > 60) and (obj_Player.playerHp <= 60)) spr_curr = spr_60;
	if ((obj_Player.playerHp > 50) and (obj_Player.playerHp <= 50)) spr_curr = spr_50;
	if ((obj_Player.playerHp > 40) and (obj_Player.playerHp <= 40)) spr_curr = spr_40;
	if ((obj_Player.playerHp > 30) and (obj_Player.playerHp <= 30)) spr_curr = spr_30;
	if ((obj_Player.playerHp > 20) and (obj_Player.playerHp <= 20)) spr_curr = spr_20;
	if ((obj_Player.playerHp > 10) and (obj_Player.playerHp <= 10)) spr_curr = spr_10;	
	if ((obj_Player.playerHp > 0) and (obj_Player.playerHp <= 0)) spr_curr = spr_5;	
	