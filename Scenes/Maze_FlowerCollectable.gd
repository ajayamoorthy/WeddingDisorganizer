extends Area2D

func _on_Flower_body_entered(body):
	if body.name == "Player":
		queue_free()
