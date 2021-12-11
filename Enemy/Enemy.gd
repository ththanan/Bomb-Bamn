extends KinematicBody2D

const FLOOR = Vector2(0, -1)
const SPEED = 100
const ACCEL = 20

var DIRECTION = 3
var velocity = Vector2()

func _ready():
	$AnimatedSprite.play("Idle")
	
func _process(delta):
	for area in $PlayerDetector.get_overlapping_areas():
		var body = area.get_parent()
		if (body.name == "Player"):
			body.die()
			get_tree().reload_current_scene()

func _on_JumpDetector_body_entered(body):
	queue_free()
