
extends Button

func _ready() -> void:
	pivot_offset = size / 2

	mouse_entered.connect(_on_mouse_entered)
	mouse_exited.connect(_on_mouse_exited)


func _on_mouse_entered() -> void:
	var tween = create_tween()
	tween.tween_property(self, "scale", Vector2(1.20, 1.20), 0.15)


func _on_mouse_exited() -> void:
	var tween = create_tween()
	tween.tween_property(self, "scale", Vector2.ONE, 0.15)
