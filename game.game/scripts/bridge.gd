extends Node2D

func _on_area_2d_body_entered(body: Node2D) -> void:
	if body.name == "Dog":
		await get_tree().create_timer(2).timeout
		self.remove_child($StaticBody2D)
		await get_tree().create_timer(2).timeout
		self.add_child($StaticBody2D)
