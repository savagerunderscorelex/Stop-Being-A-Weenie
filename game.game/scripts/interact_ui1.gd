extends Control

# Interactive UI Text
func _ready() -> void:
	$InteractHeading.text = "Platforms"
	$InteractParagraph.text = "Platforms can move from up to down or side to side. They will take you throughout the map. They all have a wait time, so don't feel rushed to immediately jump on a platform when being transported from another one. You will use all the platforms to traverse through this map. "


# Making the X button functional and also allow for the Interact UI to close as well
func _on_close_button_button_down() -> void:
	Autoload.interact_ui.visible = false
