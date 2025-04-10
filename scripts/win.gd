extends CanvasLayer

func _process(_delta: float):
    if Input.is_action_pressed("interact"):
        get_tree().paused = false
        get_tree().reload_current_scene()
        queue_free()