extends CharacterBody2D

@export var speed : float = 500 # @export adds a variable to the inspector menu of the parent node (that's actually so cool)

func _physics_process(delta: float) -> void: # This function takes a float as an input
	get_input()
	move_and_slide() # Can only be used in a Character2D Node

func get_input() -> void:
	var direction = Input.get_axis("move_left", "move_right") # Gets 2 input actions for input, the right side of the assignment operator returns a value between -1 and 1, -1 for left, 1 for right
	velocity.x = direction * speed
