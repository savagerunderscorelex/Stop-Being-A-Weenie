extends Control

# Interactive UI Text
func _ready() -> void:
	$InteractHeading.text = "Falling Bridges"
	$InteractParagraph.text = "Be careful of falling bridges! After you walk over a part of the bridge, it will disappear. Think wisely before crossing a bridge to prevent dying!"

# Making the X button functional and also allow for the Interact UI to close as well
func _on_close_button_button_down() -> void:
	Autoload.interact_ui.visible = false
