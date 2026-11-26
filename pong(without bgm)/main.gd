extends Node2D
var ball_scene= preload("res://ball.tscn")

var score=0

func _ready() -> void:
	pass
	
	

func _on_ball_player_hit() -> void:
	score+=1
	$SCORE/Label.text ="SCORE: "+str(score)
	if score==20:
		$ball.speed+=200
	elif score==40:
		$ball.speed+=200
	elif score==60:
		$ball.speed+=200
	else:
		pass
func game_over()->void:

	$End_Screen/End/VBoxContainer/Label.text ="YOUR SCORE:"+str(score)
	$End_Screen.show()
	get_tree().paused=true

func _on_button_pressed() -> void:
	get_tree().paused = false
	get_tree().reload_current_scene()# Replace with function body.
