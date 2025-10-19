extends Node2D

@onready var pause: Control = $CanvasLayer/Pause
var paused = false

func _ready() -> void:
	pause.hide()

func _process(delta: float) -> void:
	if Input.is_action_just_pressed("pause"):
		pauseMenu()
		
func pauseMenu():
	if paused:
		pause.hide()
		Engine.time_scale = 1
	else:
		pause.show()
		Engine.time_scale = 0
	
	paused = !paused
