extends CharacterBody2D
class_name enemy

@onready var animation = $AnimationPlayer

func _physics_process(delta):
	
	if Input.is_action_just_pressed("ui_accept"):
		animation.play("new_animation")
	velocity.y += gravity
	move_and_slide()

func _on_static_body_2d_body_entered(body):
	if body is player:
		body.queue_free()
