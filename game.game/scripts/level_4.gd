extends Node2D

func _ready() -> void:
	Autoload.hotdogs_found = 0
	Autoload.hotdogs_needed = 9

func _on_boundary_body_entered(body: Node2D) -> void:
	if body.name == "Dog":
		get_tree().reload_current_scene()
