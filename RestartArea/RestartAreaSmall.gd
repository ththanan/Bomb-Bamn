extends Area2D

func _on_RestartArea_body_entered(body):
	if (body.name == "Player"):
		get_tree().change_scene("res://Level/Level6.tscn")
