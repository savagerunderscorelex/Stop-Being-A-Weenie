extends Node2D

func _ready() -> void:
	Autoload.hotdogs_found = 0
	Autoload.hotdogs_needed = 4
	
func _process(delta: float) -> void:
	$CanvasLayer/Game_UI/Hotdogs_obtained.text = str(Autoload.hotdogs_found)
	$CanvasLayer/Game_UI/Hotdogs_required.text = str(Autoload.hotdogs_needed)
	$CanvasLayer/Game_UI/Objective_label.text = "Current Objective: Find %s Hotdogs in this level!" %[str(Autoload.hotdogs_needed)]
