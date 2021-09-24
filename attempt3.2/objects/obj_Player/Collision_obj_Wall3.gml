
//to set up collision with Wall2
if (x <= 32) x = obj_Wall3.x;
if (x >= obj_Wall3.x - 32) x = obj_Wall3.x + 10;
if (y <= 128) y = obj_Wall3.y - 128;
if (y >= obj_Wall3.y - 128) y = obj_Wall3.y + 32;
