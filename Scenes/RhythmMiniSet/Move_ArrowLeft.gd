extends Area2D


var speed = 100
var sensor = 0

func _process(delta):
	
	# Move
	position.y -= speed*delta


	# Screen exited
	if position.y < -50:
		queue_free()

	# Sensorand pressed
	if sensor == 1:
		# "Add Global" > new
		if Global.sensor_AL == 1:
			if Input.is_action_just_pressed("ui_left"):
				queue_free()


func _on_Move_ArrpowLeft_area_shape_entered(area_rid, area, area_shape_index, local_shape_index):
	sensor = 1



func _on_Move_ArrpowLeft_area_shape_exited(area_rid, area, area_shape_index, local_shape_index):
	sensor = 0
