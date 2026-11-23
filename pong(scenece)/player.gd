extends CharacterBody2D


var speed = 600.0
var half_of_width = 90


func _physics_process(delta: float) -> void:
	var direction=Input.get_axis("ui_left","ui_right")
	
	velocity.x=

	# Handle jump.
	if Input.is_action_just_pressed("ui_accept") and is_on_floor():
		velocity.y = JUMP_VELOCITY

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction := Input.get_axis("ui_left", "ui_right")
	if direction:
		velocity.x = direction * speed
	else:
		velocity.x = move_toward(velocity.x, 0, speed)

	move_and_slide()
