extends Node2D

func _ready():
	Autoload.hotdogs_found = 0
	Autoload.hotdogs_needed = 13
	
	# Interact UI Stuff
	Autoload.interact_ui = $CanvasLayer/InteractUI # Gets the Interact UI for the Level :3
	Autoload.can_open_interact_ui = false
	Autoload.interact_ui.visible = false
	
func _on_boundary_body_entered(body: Node2D) -> void: # If a body enters the boundary area body...
	if body.name == "Dog": # and it's the player...
		get_tree().reload_current_scene() # reset the level

func _process(delta: float) -> void:
	$CanvasLayerGameUI/Game_UI/Hotdogs_obtained.text = str(Autoload.hotdogs_found)
	$CanvasLayerGameUI/Game_UI/Hotdogs_required.text = str(Autoload.hotdogs_needed)
	$CanvasLayerGameUI/Game_UI/Objective_label.text = "Current Objective: Find %s hotdogs in this level!" %[str(Autoload.hotdogs_needed)]
	
	complete_level()
	if Autoload.is_level_complete == true:
		$CanvasLayerGameUI/Game_UI/Objective_label.text = "Objective Complete! You've Made It to the End!"
		await get_tree().create_timer(3).timeout
		SoundBoard.levelComplete.play()
		get_tree().change_scene_to_file("res://scenes/end_screen.tscn")
	
func complete_level():
	if Autoload.hotdogs_found == Autoload.hotdogs_needed:
		Autoload.is_level_complete = true
	
