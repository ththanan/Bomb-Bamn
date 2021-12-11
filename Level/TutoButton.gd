extends Button

func _on_TutoButton_pressed():
	$beep.play()
	get_tree().change_scene("res://Level/Tutorial.tscn")
