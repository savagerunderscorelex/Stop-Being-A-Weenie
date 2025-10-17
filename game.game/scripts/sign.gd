extends Node2D

func _ready() -> void:
	Autoload.can_open_interact_ui = false
	Autoload.is_open_interact_ui = false

func _on_area_2d_body_exited(body: Node2D) -> void:
	if body.name == "Dog":
		$Label.text = " "
		Autoload.can_open_interact_ui = false

func _on_area_2d_body_entered(body: Node2D):
	if body.name == "Dog":
			$Label.text = "Press E to Interact"
			Autoload.can_open_interact_ui = true
	
	
