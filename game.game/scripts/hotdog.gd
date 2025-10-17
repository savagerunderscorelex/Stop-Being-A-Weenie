extends CharacterBody2D

@export var speed : float = 300 # @export adds a variable to the inspector menu of the parent node (that's actually so cool)
@onready var animator: AnimatedSprite2D = $AnimatedSprite2D
@export var jump_speed: int = -speed * 2
@export var gravity: float = speed * 3

func _physics_process(delta: float) -> void: # This function takes a float as an input
	get_input()
	update_movement(delta)
	update_animation()
	move_and_slide() # Can only be used in a Character2D Node

func get_input() -> void: # -> void means returns void, which means that this function does not return a value
	if Input.is_action_just_pressed("jump") and is_on_floor(): # If the up buttons are pressed and the sprite is touching a solid object
		velocity.y = jump_speed # jumping height
		SoundBoard.jumpSound.play()
		
	elif Input.is_action_just_pressed("reset"):
		get_tree().reload_current_scene()
	elif Input.is_action_just_pressed("Interact"):
		pass # run a function
	var direction = Input.get_axis("move_left", "move_right") # Gets 2 input actions for input, the right side of the assignment operator returns a value between -1 and 1, -1 for left, 1 for right
	velocity.x = direction * speed # If direction is negative, the velocity direction is left, if direction is positive, the velocity value will make the sprite go right

func update_movement(delta: float) -> void:
	velocity.y += gravity * delta

func update_animation() -> void:
	if velocity.x == 0: # Checks if the player is not moving, since the range for directions is -1 to 1, and 0 is no movement
		animator.play("idle") # Makes the current animation the idle animation
		return
	elif velocity.x < 0: # After like an hour of reading godot forums, I got this to work. I didn't follow the tutorial version because it's code would shrink my sprite when it turned left or right
		animator.play("walking_right") # Also this version is way more easier to understand (and actually works!!)
		animator.flip_h = true # Opposite, makes the sprite flip horizontally, facing left
	else:
		animator.play("walking_right")
		animator.flip_h = false # Makes the sprite go back to the original position
