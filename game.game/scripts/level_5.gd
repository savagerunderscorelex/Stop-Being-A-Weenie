extends Node2D

func _ready():
	Autoload.hotdogs_found = 0
	Autoload.hotdogs_needed = 13

func _on_boundary_body_entered(body: Node2D) -> void: # If a body enters the boundary area body...
	if body.name == "Dog": # and it's the player...
		get_tree().reload_current_scene() # reset the level


func complete_level():
	pass
	
