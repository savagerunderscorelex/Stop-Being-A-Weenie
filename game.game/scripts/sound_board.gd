extends Node2D

@onready var chompSound = $Chomp
@onready var jumpSound = $Jump
@onready var levelComplete = $LevelComplete

func play_sound(key):
	var sound = get(key)
	if sound is AudioStreamPlayer:
		sound.play()
	else:
		print("Sound " + key + " not found")
