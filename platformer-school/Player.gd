extends CharacterBody2D
class_name player 

@export var gravity = 50
@export var speed = 100
@export var jump_force = 800

func _physics_process(delta):
	velocity.y += gravity
	
	if Input.is_action_just_pressed("ui_up"):
		if is_on_floor():
			velocity.y -= jump_force
	
	
	var direction = Input.get_axis("ui_left", "ui_right")
	velocity.x = direction * speed 
	
	move_and_slide()
	
# BOBO MO JUSTIN
# GWAPO ALLEN
