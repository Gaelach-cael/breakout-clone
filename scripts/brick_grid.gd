extends Node2D

@onready var brick = preload("res://scenes/Bricks.tscn")
@onready var win = preload("res://scenes/win.tscn")

func _ready():
    for x in range(48, 1152, 96):
        for y in range(0, 375, 48):
            var newBrick = brick.instantiate()
            newBrick.position = Vector2(x, y)
            add_child(newBrick)

func _process(_delta: float) -> void:
    if get_child_count() == 0:
        get_parent().add_child(win.instantiate())
        get_tree().paused = true