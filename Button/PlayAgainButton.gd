extends Button

func _on_PlayAgainButton_pressed():
	$beep.play()
	get_tree().change_scene("res://Level/MainHome.tscn")
