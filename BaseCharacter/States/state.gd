extends Node

signal finish(next_state)

var FRAME_LOOP = 255

var c = null
var f = 0

func state_init(c):
	self.c = c
	self.f = 0
	init()
	
func init():
	pass
	
func state_exit():
	exit()
	
func exit():
	pass

func state_input(event):
	input(event)
	
func input(event):
	pass

func state_update(delta):
	f = (f + 1) % FRAME_LOOP
	update(delta)
	
func update(delta):
	pass
	
func state_on_anim_done(anim_name):
	pass

func frame(fno):
	return f >= fno

func get_x_direction():
	return int(Input.is_action_pressed("d")) - int(Input.is_action_pressed("a"))
	
func is_landing():
	return c.is_on_floor() and c.velocity.y <= 0