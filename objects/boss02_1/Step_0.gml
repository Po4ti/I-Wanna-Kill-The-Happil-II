if !instance_exists(player) and !pat {
    alarm[0] = 0; alarm[1] = 0; alarm[2] = 0; alarm[3] = 0;
    audio_stop_sound(Instance);
    exit;
}

if qwer == 1 and !instance_exists(Boss02_7) and !instance_exists(Boss02_9) {qwer = 2; alarm[2] = 30;}
if qwer == 3 and !instance_exists(Boss02_9) {with(Boss02_26) {instance_destroy();} with(Boss02_31) {instance_destroy();} qwer = 4; alarm[2] = 30;}
if qwer == 5 and !instance_exists(Boss02_9) {with(Boss02_28) {instance_destroy();} with(Boss02_29) {instance_destroy();} with(Boss02_30) {instance_destroy();} qwer = 6; alarm[0] = 30;}
if qwer == 7 and !instance_exists(Boss02_25) {with(Boss02_75) {instance_destroy();} with(Boss02_76) {instance_destroy();} qwer = 8; alarm[3] = 30;}
if qwer == 9 and !instance_exists(Boss02_25) {with(Boss02_77) {mode = 1; yy1_spd = -2-2*num; yy2_spd = -4;} with(Boss02_68) {instance_destroy();} qwer = 10; alarm[3] = 30;}
if qwer == 11 and !instance_exists(Boss02_25) {with(Boss02_78) {appear += 2;} with(Boss02_79) {instance_destroy();} qwer = 12;}
if qwer == 12 and !instance_exists(Boss02_78) {patt = 61; qwer = 14; alarm[1] = 30;}

/*
if qwer == 1 and !instance_exists(Boss02_9) {qwer = 2; alarm[0] = 30;}
if qwer == 3 and !instance_exists(Boss02_7) and !instance_exists(Boss02_9) {qwer = 4; alarm[0] = 30;}
if qwer == 5 and !instance_exists(Boss02_9) and !instance_exists(Boss02_14) and !instance_exists(Boss02_15) {qwer = 6; alarm[0] = 30;}
if qwer == 7 and !instance_exists(Boss02_9) {qwer = 8; alarm[0] = 30;}
if qwer == 9 and !instance_exists(Boss02_25) {with(Boss02_24) {instance_destroy();} qwer = 10; alarm[1] = 30;}
if qwer == 11 and !instance_exists(Boss02_25) {with(Boss02_26) {instance_destroy();} qwer = 12; alarm[1] = 30;}
if qwer == 13 and !instance_exists(Boss02_25) {with(Boss02_28) {instance_destroy();} with(Boss02_29) {instance_destroy();} with(Boss02_30) {instance_destroy();} qwer = 14; alarm[1] = 30;}
if qwer == 15 and !instance_exists(Boss02_25) {with(Boss02_31) {instance_destroy();} qwer = 16; alarm[1] = 30;}