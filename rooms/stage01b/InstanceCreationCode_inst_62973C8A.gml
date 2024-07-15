ftn_trigger = function(trigger) {
	if (trigger >= 0 && trigger <= 3) {
		if (trig[trigger] && trigger_id[trigger] != -1 && instance_exists(trigger_id[trigger])) {
			var temp = instance_create_depth(trigger_id[trigger].x, trigger_id[trigger].y, trigger_id[trigger].depth, Hamjung01);
			temp.sprite_index = trigger_id[trigger].sprite_index;
			temp.image_index = trigger_id[trigger].image_index;
			temp.image_xscale = trigger_id[trigger].image_xscale;
			temp.image_yscale = trigger_id[trigger].image_yscale;
			temp.image_speed = 0;
			with(trigger_id[trigger]) instance_destroy();
			trigger_id[trigger] = temp;
		}
	}
};

ftn_step = function() {
	var i;
	
	for(i=0; i<4; i+=1) {
		if (trig[i] && trigger_id[i] != -1 && instance_exists(trigger_id[i])) {
			with(trigger_id[i]) image_alpha = max(image_alpha - 0.1, 0);
		}
	}
};