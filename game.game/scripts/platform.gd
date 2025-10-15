extends Node2D

@export var distance: int
@export var wait_time: int

func _ready() -> void:
	move_down()

func move_right():
	var tween = create_tween()
	tween.tween_property(self, "position", position + Vector2(distance,0), 1)
	await get_tree().create_timer(wait_time).timeout
	tween.tween_callback(move_left)
	
func move_left():
	var tween = create_tween()
	tween.tween_property(self, "position", position + Vector2(-distance,0), 1)
	tween.tween_callback(move_right)

# Based on the code from the tutorial, I can guess the code to make the platform move up and down

func move_up():
	var tween = create_tween()
	tween.tween_property(self, "position", position + Vector2(0, distance), 1)
	tween.tween_callback(move_down)

func move_down():
	var tween = create_tween()
	tween.tween_property(self, "position", position + Vector2(0, distance), 1)
	tween.tween_callback(move_up)
