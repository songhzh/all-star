extends KinematicBody

export var MOVE_SPEED = 3.0
export var AIR_SPEED_MULT = 0.5
export var JUMP_SPEED = 5.0
export var GRAVITY = 0.4

onready var STR_TO_STATE = {
	"idle": $States/Idle,
	"jump": $States/Jump,
	"move": $States/Move,
	"fall": $States/Fall
}

var current_state = null
var velocity = Vector3()
var damage = 0


func _ready():
	ready()

func _input(event):
	input(event)

func _physics_process(delta):
	physics_process(delta)

func ready():
	for state in $States.get_children():
		state.connect("finish", self, "change_state")
		
	change_state("idle")

func input(event):
	current_state.state_input(event)
	
func physics_process(delta):
	velocity.y -= GRAVITY
	current_state.state_update(delta)
	velocity = move_and_slide(velocity, Vector3(0, 1, 0))
	
func change_state(state_name):
	print(state_name)
	var state = STR_TO_STATE[state_name]
	
	if (current_state != null):
		current_state.state_exit()
		
	current_state = state
	current_state.state_init(self)
