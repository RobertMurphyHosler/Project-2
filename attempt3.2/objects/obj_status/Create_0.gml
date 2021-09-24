//Pick a random seed for the less predictable number generations
randomize();

//Initialize Player level
playerlevel = 1;

//player exp


//to increase the players health
playerMaxHealth = 75 + (playerlevel * 25);
playerHealth = playerMaxHealth;

//to incerase the players eneregy
playerMaxEnergy = 75 + (playerlevel * 25);
playerEnergy = playerMaxEnergy;

playerAttack = 5;
playerDefense = 5;

Coins = 0;



new_room = noone;