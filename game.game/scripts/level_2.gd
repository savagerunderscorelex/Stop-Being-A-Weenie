extends Node2D

func _ready() -> void:
	Autoload.hotdogs_found = 0
	Autoload.hotdogs_needed = 4
	
# Insert Area 2D Node Code Here
# Insert Area 2D Node Code Here
# Insert Area 2D Node Code Here
# Insert Area 2D Node Code Here
# Insert Area 2D Node Code Here
# Insert Area 2D Node Code Here

	
	
func _process(delta: float) -> void:
	$CanvasLayer/Game_UI/Hotdogs_obtained.text = str(Autoload.hotdogs_found)
	$CanvasLayer/Game_UI/Hotdogs_required.text = str(Autoload.hotdogs_needed)
	$CanvasLayer/Game_UI/Objective_label.text = "Current Objective: Find %s Hotdogs in this level!" %[str(Autoload.hotdogs_needed)]
	if Autoload.hotdogs_found == Autoload.hotdogs_needed:
		$CanvasLayer/Game_UI/Objective_label.text = "Objective Completed!"
		await get_tree().create_timer(3).timeout
		get_tree().change_scene_to_file("res://scenes/levels/level_3.tscn")
