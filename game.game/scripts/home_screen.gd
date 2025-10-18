extends Control

func _ready() -> void:
	$Panel/Panel.visible = false

func _on_button_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/levels/level_1.tscn")

func _on_button_2_pressed() -> void:
	$Panel/Panel.visible = true
	$Panel/RichTextLabel.visible = false
	$Panel/Button2.visible = false


func _on_button_x_pressed() -> void:
	$Panel/Panel.visible = false
	$Panel/RichTextLabel.visible = true
	$Panel/Button2.visible = true
	
