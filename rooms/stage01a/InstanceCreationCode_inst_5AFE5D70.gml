ftn_step = function() {
	if (trig[0]) {
		if (time < 16) {
			with(trigger_id[0]) x -= 2;
			time += 1;
		} else instance_destroy();
	}
};