
extends "flying_thing.gd"

const REWARD = preload("coin.tscn")
const shot_type = preload("shot.gd")

func destroy(other):
	if destroyed:
		return
	if other extends shot_type:
		var reward = REWARD.instance()
		reward.set_name(get_name() + "_reward")
		reward.set_pos(get_pos())
		get_parent().add_child(reward)
	.destroy(other)


