vspeed = 8;
canhit = 1;
alarm[0] = 120;
alarm[1] = 12;
audio_play_sound(snd02_16, 0, false);
instance_create_depth(0, 0, -8, Boss02_h3);
var zx = instance_create_depth(x, y, -10, Boss02_n);
zx.image_index = 9;
zx.sid = id;
zx.image_alpha = 1;
zx.a = -1;