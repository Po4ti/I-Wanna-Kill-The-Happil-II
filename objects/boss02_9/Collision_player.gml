if collision_rectangle(x-13*image_xscale, y-34*image_xscale, x+13*image_xscale, y-25*image_xscale, player, 1, 1) and !asdf {
    asdf = 1;
    hspeed = 0;
    vspeed = 0;
    gravity = 0;
    sprite_index = sprBoss02_11;
    alarm[0] = 20;
	audio_play_sound(snd02_5, 0, false, world.sound_vol);
    if image_xscale != 1 {
        var zx = instance_create_depth(x, y-image_xscale*16, -1, Boss02_7); zx.sprite_index = sprBoss02_7; zx.image_xscale = image_xscale/2; zx.image_yscale = image_yscale/2; zx.hspeed = 4; zx.vspeed = -5; zx.image_speed = 1/5;
        zx = instance_create_depth(x, y-image_xscale*16, -1, Boss02_7); zx.sprite_index = sprBoss02_7; zx.image_xscale = image_xscale/2; zx.image_yscale = image_yscale/2; zx.hspeed = -4; zx.vspeed = -5; zx.image_speed = 1/5;
    }
    with(other) {vspd = -6; reset_jumps();}
	with(Boss02_8) asdf = 2;
} else if collision_rectangle(x-13*image_xscale, y-34*image_xscale, x+13*image_xscale, y, player, 1, 1) and !asdf {
    with(player) kill_player();
}