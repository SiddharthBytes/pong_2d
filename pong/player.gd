extends CharacterBody2D


var speed = 600.0
var half_of_paddle_height = 90


func _physics_process(_delta: float) -> void:
	var direction=Input.get_axis("ui_up","ui_down")
	
	velocity.y=direction*speed#it takes the input and multiply that to speed
	
	velocity.x=0#since we are not moving it to x axis
	#this upper section of code was for movement
	
	
	global_position.x=1093
	#this lower section of code to dont let the paddle get out of the viewport
	
	
	var screen_height=get_viewport_rect().size.y
	
	global_position.y=clampf(global_position.y,
	half_of_paddle_height,
	screen_height-half_of_paddle_height)
	
	move_and_slide()
