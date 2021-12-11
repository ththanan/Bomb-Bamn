extends Area2D

func _on_Door_body_entered(body):
	if (body.name == "Player"):
		if body.havebomb() == true:
			print('havebomb')
			get_tree().change_scene("res://Level/Level4.tscn")
