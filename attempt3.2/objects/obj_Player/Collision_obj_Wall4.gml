
//to set up collision with Wall4
if (x <= 32) x = obj_Wall4.x;
if (x >= obj_Wall4.x - 32) x = obj_Wall4.x + 10;
if (y <= 128) y = obj_Wall4.y - 128;
if (y >= obj_Wall4.y - 128) y = obj_Wall4.y + 32;
