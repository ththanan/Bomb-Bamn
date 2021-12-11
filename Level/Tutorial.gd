extends Node
func _ready():
	$win.play()
	Input.set_mouse_mode(Input.MOUSE_MODE_HIDDEN)
	
func _on_Enemy2_tree_exited(): $mondie.play()
func _on_Enemy_tree_exited(): $mondie.play()
func _on_Bomb_tree_exited(): $bombbeep.play()


#func _on_BackButton_pressed(): 
#	$beep.play()
#	get_tree().change_scene("res://Level/MainHome.tscn")
