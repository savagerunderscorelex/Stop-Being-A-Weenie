extends Node2D
@onready var animator = $AnimatedSprite2D



func _on_area_2d_body_entered(body: Node2D) -> void:
	Autoload.hotdogs_found += 1 # I found out that Autoload has to be capitilized to be worked
	self.queue_free()


func _on_ready() -> void:
	animator.play("default")
