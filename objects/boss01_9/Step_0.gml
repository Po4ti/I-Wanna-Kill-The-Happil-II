if a == 1 {image_alpha += 0.1; if image_alpha >= 1 {image_alpha = 1; a = 0;}}
else if a == 0 {
    if mouse_check_button_pressed(mb_left) and instance_exists(player) {image_alpha -= 0.1; audio_play_sound(sndBossHit, 0, false, world.sound_vol);}
    if image_alpha <= 0 {instance_destroy(); audio_play_sound(sndDeath, 0, false, world.sound_vol);}
} else if a == -1 {
    if instance_exists(player) {
        audio_play_sound(sndShoot, 0, false, world.sound_vol);
        var b = instance_create_depth(lx, ly, -4, fruit);
        b.direction = point_direction(lx, ly, player.x, player.y);
        b.speed = 8;
        instance_create_depth(lx, ly, -5, Explo3);
    }
}