extends Node

func _ready():
	$win.play()
	Input.set_mouse_mode(Input.MOUSE_MODE_HIDDEN)

func _on_Enemy_tree_exited(): $mondie.play()
func _on_Enemy2_tree_exited(): $mondie.play()
func _on_Enemy3_tree_exited(): $mondie.play()
func _on_Enemy5_tree_exited(): $mondie.play()
func _on_Enemy6_tree_exited(): $mondie.play()
func _on_Enemy7_tree_exited(): $mondie.play()
func _on_Enemy8_tree_exited(): $mondie.play()
func _on_Enemy15_tree_exited(): $mondie.play()
func _on_Enemy16_tree_exited(): $mondie.play()
func _on_Enemy17_tree_exited(): $mondie.play()
func _on_Enemy4_tree_exited(): $mondie.play()
func _on_Enemy9_tree_exited(): $mondie.play()
func _on_Enemy10_tree_exited(): $mondie.play()
func _on_Enemy11_tree_exited(): $mondie.play()
func _on_Enemy12_tree_exited(): $mondie.play()
func _on_Enemy13_tree_exited(): $mondie.play()
func _on_Enemy14_tree_exited(): $mondie.play()


func _on_Bomb_tree_exited(): $beep.play()
