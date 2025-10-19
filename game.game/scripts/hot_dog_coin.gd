extends Node2D
@onready var animator = $Area2D/AnimatedSprite2D

var is_entered_true : bool
func _on_area_2d_body_entered(body: Node2D) -> void:
	if body.name == "Dog": # Made it so that only the Dog touching the hotdog will increase the score
		is_entered_true = true
		SoundBoard.chompSound.play()

func _process(delta: float) -> void:
	if is_entered_true == true:
		self.queue_free() # removes it from view
		Autoload.hotdogs_found += 1
		is_entered_true = false

func _on_ready() -> void:
	animator.play("default")
