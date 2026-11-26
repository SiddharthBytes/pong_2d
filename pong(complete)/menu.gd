extends Control



# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_button_pressed() -> void:
	hide()# Replace with function body.
	get_tree().current_scene.get_node("ball").start_ball()
	get_tree().current_scene.get_node("SCORE/Label").show()
	get_tree().current_scene.get_node("AudioStreamPlayer").play()
func _on_button_2_pressed() -> void:
	get_tree().quit()

	# Replace with function body.
