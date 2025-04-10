extends CharacterBody2D

@export var ballspeed = 150
@onready var lose = preload("res://scenes/lose.tscn")

func _ready():
	#set movement speed
	velocity = Vector2(ballspeed, ballspeed)
	add_to_group("orb")

func _physics_process(delta: float):

	var collision = move_and_collide(velocity * delta)


	if collision:
		var normal = collision.get_normal()

		velocity = velocity.bounce(normal)
		
		$AudioStreamPlayer.play()


func _on_visible_on_screen_notifier_2d_screen_exited():
		get_parent().add_child(lose.instantiate())
		get_tree().paused = true