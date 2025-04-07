extends CharacterBody2D

#defines speed for paddle
@export var paddle_speed = 25


#function called per frame
func _physics_process(_delta: float):
	#defines movement var as 0 at start of frame
	var movement = 0
	#defines movement left+right
	if Input.is_action_pressed("move_left"):
		movement -= 1
	if Input.is_action_pressed("move_right"):
		movement += 1

	velocity = Vector2(movement, 0) * paddle_speed
	move_and_slide()
