image_speed = 1/5;
image_xscale = -1;
vspeed = 16;
alarm[0] = 6;
patt = 0;
ang = 0;
if (global.practice == 4) audio_play_sound(snd01_10, 0, false, world.sound_vol);
canhit = 1;
nothit = 0;
var zx = instance_create_depth(x, y, -10, Boss01_n);
zx.sid = id;
zx.ox = -91;
zx.oy = -32;
zx.image_alpha = 1;
zx.a = -1;