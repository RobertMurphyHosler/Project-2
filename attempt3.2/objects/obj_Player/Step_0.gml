// to check if something is in the way
//if (place_meeting(x,y))
//{
	
//}
//to make the charcter move upon these keys being pressed
//the and place_free was added in projects 2, as well as the walkSpeed

//place_free works on objects marked as solid
if (keyboard_check (ord ("W")) and place_free(x, y - collisionSpeed))
{
	y -= walkSpeed;
}

if (keyboard_check (ord ("S")) and place_free(x, y + collisionSpeed))
{
	y += walkSpeed;
}

if (keyboard_check (ord ("A")) and place_free(x - collisionSpeed, y))
{
	x -= walkSpeed;
}

if (keyboard_check (ord ("D")) and place_free(x + collisionSpeed, y))
{
	x += walkSpeed;
}

// to create the attack
if(mouse_check_button(mb_left))
{

	instance_create_layer(x, y, "AttackLayer", obj_Attack1);
}
if(mouse_check_button(mb_right))
{

	instance_create_layer(x, y, "AttackLayer", obj_Bomb1);
}


//they die and restart the game
if (playerHp <= 0)
{
	instance_destroy();
	//show image saying you died with a sound similar from lugies mansion of death

	game_restart();
}



//to keep the player within the boundaries of the map 
if (x <= 32) x = 32;
if (x >= room_width - 32) x = room_width - 32;
if (y <= 128) y = 128;
if (y >= room_height - 128) y = room_height - 128;


/*
//meant to connect the player to the hurtbox
hurtbox = scr_hurtbox_create(18,24,-9,-24);

//meant to connect the player to the hitbox
hitbox = -1;
/*