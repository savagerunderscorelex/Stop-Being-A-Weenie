extends Node2D
# I'm writing the code of each level from scratch to try to ingrain how to do stuff and understand how to do things by myself (may backfire cus I might encode the information as more as something to memorize rather than something to remember and actually understand

func _ready() -> void: # When the scene is ready...
	Autoload.hotdogs_found = 0 # assign the hotdogs_found variable from the Autoload scene the value of 0...
	Autoload.hotdogs_needed = 7 # assign the hotdogs_needed variable from the Autoload scene the value of 7...
	Autoload.is_level_complete = false # and assign the is_level_complete variable from the Autoload scene the value of false...
	
func _on_boundary_body_entered(body: Node2D) -> void: # If a body enters the body named "Boundary"...
	if body.name == "Dog": # and if the body entering it is named "Dog" (aka the player body)...
		get_tree().reload_current_scene() # The scene will restart
	
func _process(delta: float) -> void: # According to the little tidbit that appears when you hover over the function, the function _process runs continually as the game is active as fast as possible
	$CanvasLayer/Game_UI/Hotdogs_obtained.text = str(Autoload.hotdogs_found)  # Updates hotdogs_obtained UI text
	$CanvasLayer/Game_UI/Hotdogs_required.text = str(Autoload.hotdogs_needed) # Updates hotdogs_required UI text 
	$CanvasLayer/Game_UI/Objective_label.text = "Current Objective: Find %s hotdogs in this level!" %[str(Autoload.hotdogs_needed)] # Updates the objective label text
	
	complete_level() # Function to change is_level_complete to true (I like making it harder for myself, but I get to practice how to make my own functions!!)
	if Autoload.is_level_complete == true:
		$CanvasLayer/Game_UI/Objective_label.text = "Objective Complete!"
		await get_tree().create_timer(3).timeout
		SoundBoard.levelComplete.play()
		get_tree().change_scene_to_file("res://scenes/levels/level_4.tscn")

func complete_level(): # Changing the boolean value is_level_complete when the player gets all of the hotdogs (again...)
	if Autoload.hotdogs_found == Autoload.hotdogs_needed: # When the total hotdogs found equal the hotdogs needed in this level...
		Autoload.is_level_complete = true # the level is complete!!
