extends RigidBody2D

var BIG_FRUIT: PackedScene = preload("res://scenes/big_fruit.tscn")

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	add_to_group("small_fruits")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_area_2d_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if Input.is_action_just_pressed("despawn"):
		queue_free()
		for child in get_tree().get_nodes_in_group("fruits"):
			child.sleeping = false
			#if child is RigidBody2D:
				#child.sleeping = false


	


func _on_body_entered(body: Node) -> void:
	print("collide with ", body.name)
	if body.is_in_group("small_fruit"):
		if get_instance_id() < body.get_instance_id():
			var large = BIG_FRUIT.instantiate()
			large.position = (global_position + body.global_position) / 2
			#large.position = get_viewport().get_mouse_position()
			large.add_to_group("big_fruit")
			get_parent().add_child(large)
			body.queue_free()
			queue_free()
		
		#await get_tree().create_timer(0.1).timeout
