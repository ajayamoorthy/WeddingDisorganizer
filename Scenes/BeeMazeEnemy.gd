extends KinematicBody2D


var speed = 100
var direction = 1
var velocity = Vector2()

func _ready():
	connect("body_entered", self, "_on_BeeMazeEnemy_body_entered")
	

func _physics_process(delta):
	if is_on_wall():
		direction = direction * -1
		$Sprite.flip_h = not $Sprite.flip_h
	velocity.x = speed * direction
	
	move_and_slide(velocity, Vector2.UP)
	
func _on_BeeMazeEnemy_body_entered(body):
	# Check if the colliding object has a function called "hide"
	if body.name == "Player":
		Global.flower
		queue_free()

