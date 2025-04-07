extends CharacterBody2D

#defines speed for paddle
@export var paddle_speed = 150

#function called per frame
func _physics_process(_delta: float):
	#ddefines movement var as 0 at start of frame
	var movement = 0
	#defines movement left+right
	if Input.is_key_pressed(KEY_A):
		movement -= 1
	if Input.is_key_pressed(KEY_D):
		movement += 1

	velocity = Vector2(movement, 0)*paddle_speed
	move_and_slide()
