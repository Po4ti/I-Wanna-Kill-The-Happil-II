image_xscale = 8;
image_yscale = 8;
image_speed = 6/50;
hspeed = -11.2;
friction = 0.2;
alarm[0] = 60;
alarm[1] = 65;
ang = 0;
b = 0;
instance_create_depth(0, 0, -8, Boss01_h5);
canhit = 1;
var zx = instance_create_depth(x, y, -10, Boss01_n);
zx.image_index = 5;
zx.sid = id;