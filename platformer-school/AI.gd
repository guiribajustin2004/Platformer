extends CharacterBody2D
class_name enemy2 

var gravity = 500
var speed = 60
var face = false
@onready var ray = $RayCast2D

func _physics_process(delta):
	velocity.y += gravity
	move_and_slide()


	if is_on_floor():
		if(face == false):
			velocity.x = speed
		
	if  ray.is_colliding():
		face = true
		if(face == true):
			velocity.x = -speed
		
