extends Control

# Interactive UI Text
func _ready() -> void:
	$InteractHeading.text = Autoload.interact_ui_header
	$InteractParagraph.text = Autoload.interact_ui_description

# Making the X button functional and also allow for the Interact UI to close as well
func _on_close_button_button_down() -> void:
	Autoload.interact_ui.visible = false
