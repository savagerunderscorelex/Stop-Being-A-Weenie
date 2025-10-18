extends Node2D

# This script is mostly for setting up variable values for this specific level, and also include the death boundary code
# as well. 

func _ready() -> void: # When the scene is ready
	Autoload.hotdogs_found = 0 # Current hotdogs found (always zero)
	Autoload.hotdogs_needed = 9 # This level requires 9 hotdogs
	Autoload.interact_ui = $CanvasLayer/InteractUI # Inserts a value for the character ui
	Autoload.can_open_interact_ui = false # You can't open the ui yet since the player does not spawn on the sign
	Autoload.interact_ui.visible = false # Makes the Interact_UI hidden on entering scene
	Autoload.is_level_complete = false

func _on_boundary_body_entered(body: Node2D) -> void: # if something falls into the boundary's collision body...
	if body.name == "Dog": # and it's the player...
		get_tree().reload_current_scene() # reset the level
		
func _process(delta: float) -> void: # Ongoing process: these are going on per frame of game
	$CanvasLayerGameUI/Game_UI/Hotdogs_obtained.text = str(Autoload.hotdogs_found)
	$CanvasLayerGameUI/Game_UI/Hotdogs_required.text = str(Autoload.hotdogs_needed)
	$CanvasLayerGameUI/Game_UI/Objective_label.text = "Current Objective: Find %s hotdogs in this level!" %[str(Autoload.hotdogs_needed)]
	
	complete_level()
	if Autoload.is_level_complete == true:
		$CanvasLayerGameUI/Game_UI/Objective_label.text = "Objective Complete!"
		await get_tree().create_timer(3).timeout
		SoundBoard.levelComplete.play()
		get_tree().change_scene_to_file("res://scenes/levels/level_5.tscn")
	
func complete_level():
	if Autoload.hotdogs_found == Autoload.hotdogs_needed:
		Autoload.is_level_complete = true
