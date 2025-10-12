extends Node2D

func _ready() -> void: # When the node/scene is ready
	Autoload.hotdogs_found = 0
	Autoload.hotdogs_needed = 2
	
func _on_area_2d_body_entered(body: Node2D) -> void: # When something enters this body...
	if body.name == "Dog": # And it is the player aka Dog...
		get_tree().reload_current_scene() # Reset the level!

func _process(delta: float) -> void:
	$CanvasLayer/Game_UI/Hotdogs_obtained.text = str(Autoload.hotdogs_found) # Makes the label the amount of hotdogs found
	$CanvasLayer/Game_UI/Hotdogs_required.text = str(Autoload.hotdogs_needed)
	$CanvasLayer/Game_UI/Objective_label.text = "Current Objective: Find %s Hotdogs in this level!" %[str(Autoload.hotdogs_needed)]
	if Autoload.hotdogs_found == Autoload.hotdogs_needed:
		$CanvasLayer/Game_UI/Objective_label.text = "Objective Completed!"
		await get_tree().create_timer(3).timeout # Creates a timer that waits 3 seconds and then timesout
		get_tree().change_scene_to_file("res://scenes/levels/level_2.tscn")
