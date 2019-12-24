extends "res://BaseCharacter/States/state.gd"

func init():
	c.velocity.y = c.JUMP_SPEED
	
func update(delta):
	if frame(10) or is_landing():
		emit_signal("finish", "fall")