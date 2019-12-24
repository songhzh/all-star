extends "res://BaseCharacter/States/state.gd"

func start():
	c.velocity.y = c.JUMP_SPEED
	emit_signal("finish", "fall")