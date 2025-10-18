extends Node2D 

# Autoload = where you can put global variables
var hotdogs_found : int = 0
var hotdogs_needed : int = 0
var is_level_complete : bool = false

# For the Sign Interactivity
var can_open_interact_ui : bool = false
var interact_ui : Control

var interact_ui_header : String = "Platforms"
var interact_ui_description : String = "Platforms can move from up to down or side to side. They will take you throughout the map. They all have a wait time, so don't feel rushed to immediately jump on a platform when being transported from another one. You will use all the platforms to traverse through this map. "
