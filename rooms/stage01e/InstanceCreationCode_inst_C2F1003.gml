trigger_id[0] = inst_29EF1F21;
trigger_id[1] = inst_204C11AA;
trigger_id[2] = inst_5330FCEF;
trigger_id[3] = inst_2FBF2824;
trigger_id[4] = inst_9FEDC93;

ftn_trigger = function(trigger) {
	if (trigger >= 0 && trigger <= 4) {
		if (trig[trigger] && trigger_id[trigger] != -1 && instance_exists(trigger_id[trigger])) {
			if (trigger == 0) audio_play_sound(sndBlockChange, 0, false, world.sound_vol);
			var temp = instance_create_depth(trigger_id[trigger].x, trigger_id[trigger].y, trigger_id[trigger].depth, Hamjung01);
			temp.sprite_index = trigger_id[trigger].sprite_index;
			temp.image_index = trigger_id[trigger].image_index;
			temp.image_speed = 0;
			with(trigger_id[trigger]) instance_destroy();
			trigger_id[trigger] = temp;
		}
	}
};

ftn_step = function() {
	var i;
	
	for(i=0; i<5; i+=1) {
		if (trig[i] && trigger_id[i] != -1 && instance_exists(trigger_id[i])) {
			with(trigger_id[i]) image_alpha = max(image_alpha - 0.1, 0);
		}
	}
}