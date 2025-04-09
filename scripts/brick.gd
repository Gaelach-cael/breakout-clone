extends StaticBody2D

@onready var score_node = get_node("../../Score") 

func _on_area_2d_body_entered(body: Node2D):
	if body.is_in_group("orb"):
		score_node.score += 100
		queue_free()
