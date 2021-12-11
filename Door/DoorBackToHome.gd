extends Area2D


func _on_DoorBackToHome_body_entered(body):
	if (body.name == "Player"):
		if body.havebomb() == true:
			get_tree().change_scene("res://Level/MainHome.tscn")
