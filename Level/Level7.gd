extends Node

func _ready():
	$win.play()
	Input.set_mouse_mode(Input.MOUSE_MODE_HIDDEN)

func _on_Bomb_tree_exited(): $beep.play()
