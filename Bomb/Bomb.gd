extends Node

func _ready():
	$AnimatedSprite.play("Idle")

func _on_PlayerDetector_body_entered(body):
	print('collect bomb')
	queue_free()
