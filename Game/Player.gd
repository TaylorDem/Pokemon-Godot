extends  KinematicBody2D

export (int) var speed  # How fast the player will move (pixels/sec).
var screensize  # Size of the game window.
var last_facing = "Idle_Down"

func _ready():
	# Called when the node is added to the scene for the first time.
	# Initialization here
	screensize = get_viewport_rect().size
	#hide()

func _process(delta):
	var motion = Vector2()
	#Movement controls:ASWD
	
	if Input.is_action_pressed("ui_right") or Input.is_key_pressed(68):
		motion.x = speed
		$AnimatedSprite.animation = "Right"
		last_facing = "Idle_Right"
	elif Input.is_action_pressed("ui_left") or Input.is_key_pressed(65):
		motion.x = -speed
		$AnimatedSprite.animation = "Left"
		last_facing = "Idle_Left"
	elif Input.is_action_pressed("ui_down") or Input.is_key_pressed(83):
		motion.y = speed
		$AnimatedSprite.animation = "Down"
		last_facing = "Idle_Down"
	elif Input.is_action_pressed("ui_up") or Input.is_key_pressed(87):
		motion.y = -speed
		$AnimatedSprite.animation = "Up"
		last_facing = "Idle_Up"
	else:
		motion.x = 0
		motion.y = 0
		$AnimatedSprite.animation = last_facing
		
		
	move_and_slide(motion)
	position.x = clamp(position.x, 0, screensize.x)
	position.y = clamp(position.y, 0, screensize.y)
