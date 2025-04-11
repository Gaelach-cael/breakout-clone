extends CanvasLayer

func _process(_delta: float):
    if Input.is_action_pressed("interact"):
        get_tree().change_scene_to_file("res://scenes/board.tscn")
func _on_button_pressed():
    get_tree().change_scene_to_file("res://scenes/board.tscn")
