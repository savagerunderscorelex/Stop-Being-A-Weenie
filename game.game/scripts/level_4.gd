extends Node2D

func _ready() -> void: # When the scene is ready
	Autoload.hotdogs_found = 0 # Current hotdogs found (always zero)
	Autoload.hotdogs_needed = 9 # This level requires 9 hotdogs
	Autoload.interact_ui = $CanvasLayer/InteractUI # Inserts a value for the character ui
	Autoload.can_open_interact_ui = false # You can't open the ui yet since the player does not spawn on the sign
	Autoload.interact_ui.visible = false # Makes the Interact_UI hidden on entering scene

func _on_boundary_body_entered(body: Node2D) -> void: # if something falls into the boundary's collision body...
	if body.name == "Dog": # and it's the player...
		get_tree().reload_current_scene() # reset the level
