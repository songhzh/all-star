extends Node

signal finish(next_state)

var c = null

func init(c):
	self.c = c
	start()
	
func start():
	pass
	
func exit():
	pass

func handle_input(event):
	pass

func update(delta):
	pass
	
func on_anim_done(anim_name):
	pass

func get_x_direction():
	return int(Input.is_action_pressed("d")) - int(Input.is_action_pressed("a"))