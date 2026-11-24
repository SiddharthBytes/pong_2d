extends CharacterBody2D

signal player_hit

var speed:float =1500.0
var radius:float =36.0

func _ready() -> void:
	velocity=Vector2(randf_range(-36.0,36.0),-1.0).normalized()*speed


func _physics_process(delta: float) -> void:
	var collision=move_and_collide(velocity*delta)
	
	if collision:
		if collision.get_collider().is_in_group("player"):
			player_hit.emit()
			
		velocity=velocity.bounce(collision.get_normal())
	
	var screen_height=get_viewport_rect().size.y
	
	
		
	if global_position.x<=radius:
		global_position.x=radius
		velocity.x=abs(velocity.x)
		
