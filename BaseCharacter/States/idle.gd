extends "res://BaseCharacter/States/state.gd"

func start():
	c.velocity = Vector3()

func handle_input(event):
	if c.is_on_floor() and event.is_action_pressed("w"):
		emit_signal("finish", "jump")
		return
	
	if get_x_direction():
		emit_signal("finish", "move")
		return
	