extends KinematicBody

export var move_speed = 5.0


func _ready():
	ready()

#func _process(delta):
#	process(delta)

func _physics_process(delta):
	physics_process(delta)
	
func ready():
	pass
	
func process(delta):
	pass
	
func physics_process(delta):
	var direction = Input.get_action_strength("ui_right") - Input.get_action_strength("ui_left")
	var motion = Vector3(1, 0, 0) * direction * move_speed + Vector3(0, -1, 0)
	move_and_collide(motion * delta)