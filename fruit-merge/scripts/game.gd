extends Node2D

const FRUIT = preload("res://scenes/fruit.tscn")
const BIG_FRUIT = preload("res://scenes/big_fruit.tscn")

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

const fruits = [FRUIT, BIG_FRUIT]

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	#if Input.is_action_just_pressed("spawnbig"):
		#var newfruit = BIG_FRUIT.instantiate()
		#newfruit.position = get_viewport().get_mouse_position()
		#newfruit.add_to_group("fruits")
		#add_child(newfruit)
		
	if Input.is_action_just_pressed("spawn"):
		var fruit_code = randi() % 2
		var newfruit = fruits[0].instantiate() #FRUIT.instantiate()
		newfruit.position = get_viewport().get_mouse_position()
		newfruit.add_to_group("fruits")
		add_child(newfruit)
	
	#if Input.is_action_just_pressed("despawn"):
		#for child in get_children():
			#if child is RigidBody2D:
				#if child.global_position.distance_to(get_viewport().get_mouse_position()) < 10.0 :
					#child.queue_free()
					##print(child.global_position)
				##child.queue_free()


#func _on_fruit_body_entered(body: Node) -> void:
	#print("collidedd")
	#if body is RigidBody2D:# and body.scene_file_path == scene_file_path:
		#var large = BIG_FRUIT.instantiate()
		##large.position = (global_position + body.global_position) / 2
		#large.position = get_viewport().get_mouse_position()
		#large.add_to_group("fruits")
		#add_child(large)
		#body.queue_free()
		#queue_free()
