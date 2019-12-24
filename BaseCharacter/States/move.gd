extends "res://BaseCharacter/States/state.gd"

var direction = 0

func input(event):
	if c.is_on_floor() and event.is_action_pressed("w"):
		emit_signal("finish", "jump")
		return
	
	if not get_x_direction():
		emit_signal("finish", "idle")
		return
		
func update(delta):
	c.velocity.x = get_x_direction() * c.MOVE_SPEED
	
	if not c.is_on_floor():
		emit_signal("finish", "fall")
		return