extends Area2D

func _on_Flower_body_entered(body):
	if body.name == "Player":
		Global.flowerCount += 1
		queue_free()
		
			
		
