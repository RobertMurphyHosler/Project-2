//set up damage/collision of attack with enemy
with(other)
{
	//set up damage quanity, either below will work
	//obj_enemy.hp -= obj_enemy.hp - obj_Bullet.bulletPower;
	hp -= obj_Bomb1.BombPower;
}

instance_destroy();
