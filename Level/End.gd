extends Node

func _ready():
	$EndWin.play()
	MusicPlayer.turndownvolume()
	Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)
