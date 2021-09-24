//to set up collision with Wall1
if (x <= 32) x = obj_Wall1.x;
if (x >= obj_Wall1.x - 32) x = obj_Wall1.x + 1 or obj_Wall1.x - 1; 
if (y <= 128) y = obj_Wall1.y - 128;
if (y >= obj_Wall1.y - 128) y = obj_Wall1.y + 1 or obj_Wall1.y - 1;
