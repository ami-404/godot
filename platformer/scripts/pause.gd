extends Control

@onready var game: Node2D = $"../.."

## Called when the node enters the scene tree for the first time.
#func _ready() -> void:
	###$AnimationPlayer.play("RESET")
	#pass
#
#
## Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta: float) -> void:
	#pass
#
#func resume():
	#get_tree().paused = false
	#get_tree().hide()
#
#func paused():
	#get_tree().paused = true
	##$AnimationPlayer.play("new_animation")
#
#
##func testEsc():
	##if Input.is_action_just_pressed("pause") and get_tree().paused == false:
		##paused()
	##elif Input.is_action_just_pressed("pause") and  get_tree().paused == true:
		##resume()
#
func _on_resume_btn_pressed() -> void:
	game.pauseMenu()

func _on_main_menu_btn_pressed() -> void:
	game.pauseMenu()
	get_tree().change_scene_to_file("res://scenes/main_menu.tscn")

func _on_restart_button_pressed() -> void:
	game.pauseMenu()
	#get_tree().paused = false
	get_tree().reload_current_scene()
