extends Button

func _on_StartButton_pressed():
	$beep.play()
	get_tree().change_scene("res://Level/Level1.tscn")
