if nothit {var zx = instance_create_depth(x, y-64, depth-1, BossB); zx.sid = id; zx.image_xscale = 2; zx.image_yscale = 2; zx.oy = -64;}
with(other) {instance_destroy();}
if !canhit or nothit {exit;}
if !instance_exists(Boss01_34) {with(Boss01_h11) {hp -= 1;}} else {
	if (Boss01_34.b == 1) { with(Boss01_h11) {hp -= 1;} }
	else { with(Boss01_h11) {hp = min(hpm, hp+3);} }
}
audio_play_sound(sndBossHit, 0, false);
if !world.items[2] or !world.WASP_ok {
    canhit = 0;
    alarm[11] = 8;
}