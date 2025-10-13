extends Node2D 

# Autoload = where you put global variables
var hotdogs_found : int = 0
var hotdogs_needed : int = 0
@onready var chompSound = $Chomp
@onready var jumpSound = $Jump
@onready var levelComplete = $LevelComplete
