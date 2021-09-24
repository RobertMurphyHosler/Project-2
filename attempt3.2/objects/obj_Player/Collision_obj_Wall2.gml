
//to set up collision with Wall2
if (x <= 32) x = obj_Wall2.x;
if (x >= obj_Wall2.x - 32) x = obj_Wall2.x + 1;
if (y <= 128) y = obj_Wall2.y - 128;
if (y >= obj_Wall2.y - 128) y = obj_Wall2.y + 1;
