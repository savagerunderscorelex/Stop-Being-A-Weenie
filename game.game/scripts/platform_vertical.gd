extends Node2D

@export var distance: float
@export var wait_time: int
@export var duration: int
@export var start_up_or_down: String

func _ready() -> void:
	if start_up_or_down == "down":
		move_up()
	else:
		move_down()

# Based on the code from the tutorial, I can guess the code to make the platform move up and down

func move_up():
	var tween = create_tween()
	tween.tween_property(self, "position", position + Vector2(0, distance), duration)
	tween.tween_callback(move_down)

func move_down():
	var tween = create_tween()
	tween.tween_property(self, "position", position + Vector2(0, -distance), duration)
	tween.tween_callback(move_up)
