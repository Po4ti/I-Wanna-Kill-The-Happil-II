depth = 201;

lx = 544;
ly = 352;
rx = 672;
ry = 368;
a = 0;
alarm[0] = 65;
alarm[1] = 1200;

var temp = instance_create_depth(736, 64, -50, objTime1);
temp.time = 1020;
temp.time_max = temp.time;

patt = 0;

if (world.HEALTH_ok) {
	var zx = instance_create_depth(0, 0, -49, playerHealth);
	if (world.hp_before != -1) zx.hp = world.hp_before;
	else zx.hp = 3;
	zx.hpm = 3;
	world.hp_before = -1;
}

// Practice
if (global.practice >= 0) {
	with(StageGet) instance_destroy();
    with(dark1) instance_destroy();
	alarm[11] = 1;
}