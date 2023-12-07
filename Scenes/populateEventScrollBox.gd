extends Control


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	for i in range(5):
		var eventInstance = preload("res://Scenes/eventForPlanning.tscn").instance()
		$ScrollContainer/VBoxContainer.add_child(eventInstance)
		



