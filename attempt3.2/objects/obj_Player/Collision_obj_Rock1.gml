
//to set up collision with Rock1
if (x <= 32) x = obj_Rock1.x;
if (x >= obj_Rock1.x - 32) x = obj_Rock1.x + 10;
if (y <= 128) y = obj_Rock1.y - 128;
if (y >= obj_Rock1.y - 128) y = obj_Rock1.y + 32;
