extends KinematicBody2D

const FLOOR = Vector2(0, -1)
const GRAVITY = 25
const MAXFALLSPEED = 500
const MAXSPEED = 200
const JUMPFORCE = 500
const ACCEL = 20

var HAVEBOMB = false
var velocity = Vector2()
var facing_right = true


func _physics_process(delta):
	
	velocity.y += GRAVITY
	if velocity.y > MAXFALLSPEED: velocity.y = MAXFALLSPEED
	
	if facing_right: $AnimatedSprite.flip_h = false
	else: $AnimatedSprite.flip_h = true
	
	velocity.x = clamp(velocity.x, -MAXSPEED, MAXSPEED)
	
	if Input.is_action_pressed("ui_right"):
		velocity.x += ACCEL
		facing_right = true
		$AnimatedSprite.play("Run")
	elif Input.is_action_pressed("ui_left"):
		velocity.x -= ACCEL
		facing_right = false
		$AnimatedSprite.play("Run")
	else:
		velocity.x = lerp(velocity.x, 0, 0.2)
		$AnimatedSprite.play("Idle")
	
	if is_on_floor():
		if Input.is_action_pressed("jump"):
			JumpSound.playmusic()
			velocity.y = -JUMPFORCE
	
	if !is_on_floor():
		if velocity.y < 0:
			$AnimatedSprite.play("Jump")
		elif velocity.y < 0:
			$AnimatedSprite.play("Fall")
	
	velocity = move_and_slide(velocity, FLOOR)

func _process(delta):
	for area in $PlayerArea.get_overlapping_areas():
		var body = area.get_parent()
		if (body.name == "Bomb"):
			HAVEBOMB = true
			print(HAVEBOMB)

func havebomb():
	if HAVEBOMB == true: return true
	else: return false

func die():
	$AnimatedSprite.play("DeadGround")
	queue_free()
