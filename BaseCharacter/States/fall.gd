extends "res://BaseCharacter/States/state.gd"
	
func update(delta):
	if c.is_on_floor() and c.velocity.y <= 0:
		emit_signal("finish", get_next_state())
		return

	c.velocity.x += get_x_direction() * c.AIR_SPEED_MULT
	c.velocity.x = clamp(c.velocity.x, -c.MOVE_SPEED, c.MOVE_SPEED)
		
func get_next_state():
	if not get_x_direction():
		return "idle"
	else:
		return "move"
		
