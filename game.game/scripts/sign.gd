extends Node2D



func _on_area_2d_body_entered(body: Node2D) -> void:
	if body.name == "Dog":
		$Label.text = "Press E to Learn Info."
		


func _on_area_2d_body_exited(body: Node2D) -> void:
	if body.name == "Dog":
		$Label.text = " "
