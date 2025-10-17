extends Node2D 

# Autoload = where you can put global variables
var hotdogs_found : int = 0
var hotdogs_needed : int = 0
var is_level_complete : bool = false

# For the Sign Interactivity
var can_open_interact_ui : bool = false
var interact_ui : Control
