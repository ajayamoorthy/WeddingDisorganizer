extends Node2D


var global_script = preload("res://Global.gd")


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
		#Global.goto_scene("res://Scenes/OfficeRoom.tscn")
		





func _on_Button_pressed():
	Global.goto_scene("res://Scenes/OfficeRoom.tscn")
