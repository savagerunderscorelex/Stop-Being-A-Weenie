extends PathFollow2D

var direction : float = 1 # Initializing the Variable of direction

# So the goal of this code is to program the PathFollow 2D to go to the end of the path, hit the end, and go back 
# to the start of the path again. 
func _physics_process(delta: float) -> void:
	progress += direction # progress in PathFollow2D is how much the node has gone through the path
	if progress_ratio >= 1 or progress_ratio <= 0: # When the node has progress through the path
		direction = -direction # make the platform node go the opposite direction
