image_speed = 1/5;
vspeed = 8;
alarm[11] = 2;
alarm[0] = 12;
audio_play_sound(snd03_11, 0, false);
var zx = instance_create_depth(x, y, -10, Boss03_n);
zx.image_index = 4;
zx.sid = id;
zx.image_alpha = 1;
zx.a = -1;