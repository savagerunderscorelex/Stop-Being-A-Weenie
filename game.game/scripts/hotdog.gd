extends CharacterBody2D

@export var speed : float = 120 # @export adds a variable to the inspector menu of the parent node (that's actually so cool)
@onready var animator: AnimatedSprite2D = $AnimatedSprite2D

func _physics_process(delta: float) -> void: # This function takes a float as an input
	get_input()
	update_animation()
	move_and_slide() # Can only be used in a Character2D Node

func get_input() -> void:
	var direction = Input.get_axis("move_left", "move_right") # Gets 2 input actions for input, the right side of the assignment operator returns a value between -1 and 1, -1 for left, 1 for right
	velocity.x = direction * speed

func update_animation() -> void:
	if velocity.x == 0: # Checks if the player is not moving, since the range for directions is -1 to 1, and 0 is no movement
		animator.play("idle") # Makes the current animation the idle animation
		return
	elif velocity.x < 0:
		animator.play("walking_right")
		animator.flip_h = true
	else:
		animator.play("walking_right")
		animator.flip_h = false
