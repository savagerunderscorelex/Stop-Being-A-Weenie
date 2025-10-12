extends Node2D

func _ready() -> void: # When the node/scene is ready
	Autoload.hotdogs_found = 0
	Autoload.hotdogs_needed = 2
	
func _on_area_2d_body_entered(body: Node2D) -> void: # When falling off the platforms...
	get_tree().reload_current_scene() # Reset the level


func _on_area_2d_2_body_entered(body: Node2D) -> void: # When falling off the platforms and into this area body...
	get_tree().reload_current_scene() # Reset the level


func _on_area_2d_3_body_entered(body: Node2D) -> void: # When falling off the platforms and into this area body...
	get_tree().reload_current_scene() # Reset the level

func _process(delta: float) -> void:
	$CanvasLayer/Game_UI/Hotdogs_label.text = str(Autoload.hotdogs_found) # Makes the label the amount of hotdogs found
	$CanvasLayer/Game_UI/Hotdogs_fraction.text = "/%s" % [str(Autoload.hotdogs_needed)] 
	if Autoload.hotdogs_found == 2:
		get_tree().change_scene_to_file("res://scenes/level_2.tscn")
