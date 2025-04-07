extends CharacterBody2D

func _ready():
	#set movement speed
	velocity = Vector2(150, 150)

func _physics_process(delta: float):

	var collision = move_and_collide(velocity * delta)


	if collision:
		var normal = collision.get_normal()

		velocity = velocity.bounce(normal)
