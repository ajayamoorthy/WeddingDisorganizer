extends KinematicBody2D

var speed = 200

func _physics_process(_delta):
	
	#set speed of movement
	var velocity = Vector2()
	
	#respond to keyboard movement
	if Input.is_action_pressed("ui_right"):
		velocity.x = 1
	if Input.is_action_pressed("ui_left"):
		velocity.x = -1
	if Input.is_action_pressed("ui_down"):
		velocity.y = 1
	if Input.is_action_pressed("ui_up"):
		velocity.y = -1
		
	#normalizes vector to stabilize diagonal movement speed
	velocity = velocity.normalized()
		
	#actually moves the player
	velocity = move_and_slide(velocity * speed)
