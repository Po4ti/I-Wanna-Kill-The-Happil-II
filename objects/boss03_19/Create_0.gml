image_xscale = 4;
image_yscale = 4;
vspeed = -20;
gravity = 0.4;
alarm[0] = 4;
alarm[1] = 3;
a = 0;
audio_play_sound(snd03_10, 0, false);
var zx = instance_create_depth(x, y, -10, Boss03_n);
zx.image_index = 3;
zx.sid = id;
zx.image_alpha = 1;
zx.a = -1;