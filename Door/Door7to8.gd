extends Area2D

func _on_Door_body_entered(body):
	print('something in')
	if (body.name == "Player"):
		print('player in')
		if body.havebomb() == true:
			print('havebomb')
			get_tree().change_scene("res://Level/Level8.tscn")
		else:
			print('no bomb')
