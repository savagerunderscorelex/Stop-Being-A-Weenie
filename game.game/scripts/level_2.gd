extends Node2D

func _ready() -> void: # When the node is ready
	Autoload.hotdogs_found = 0 # Hotdogs found: 0 (default)
	Autoload.hotdogs_needed = 4 # The amount of hotdogs required to go on to the next level
	Autoload.is_level_complete = false # Default stuff, so the level has not been completed yet
	
func _on_boundary_body_entered(body: Node2D) -> void: # When a body enters the boundary...
	if body.name == "Dog": # and if the body is the player, aka "Dog"
		get_tree().reload_current_scene() # restart the scene!
		
func _process(delta: float) -> void:
	$CanvasLayer/Game_UI/Hotdogs_obtained.text = str(Autoload.hotdogs_found)
	$CanvasLayer/Game_UI/Hotdogs_required.text = str(Autoload.hotdogs_needed)
	$CanvasLayer/Game_UI/Objective_label.text = "Current Objective: Find %s Hotdogs in this level!" %[str(Autoload.hotdogs_needed)]
	
	complete_level()
	if Autoload.is_level_complete == true:
		$CanvasLayer/Game_UI/Objective_label.text = "Objective Completed!"
		await get_tree().create_timer(3).timeout
		SoundBoard.levelComplete.play()
		get_tree().change_scene_to_file("res://scenes/levels/level_3.tscn")

func complete_level():
	if Autoload.hotdogs_found == Autoload.hotdogs_needed:
		Autoload.is_level_complete = true
