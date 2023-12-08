extends Node2D

var whichArrangement = null
var b1satisfactionEffect = 0
var b2satisfactionEffect = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


func _on_broomHappy_pressed():
	whichArrangement = "brooms happy"
	b1satisfactionEffect = 15
	b2satisfactionEffect = 15


func _on_nicParentsHappy_pressed():
	whichArrangement = "nic's parents happy"
	b1satisfactionEffect = -5
	b2satisfactionEffect = -2


func _on_chanParentsHappy_pressed():
	whichArrangement = "chauntal's parents happy"
	b1satisfactionEffect = 5
	b2satisfactionEffect = 10


func _on_Button_pressed():
	Global.updateSatisfaction("nic", b1satisfactionEffect)
	Global.updateSatisfaction("chauntal", b2satisfactionEffect)
	Global.seatingHarmony = whichArrangement
	Global.currentPosition = 1
	
	#debug
	print("Seating Harmony: ", Global.seatingHarmony)
	print("Nic's Satisfaction: ", Global.broom1satisfaction)
	print("Chauntal's Satisfaction: ", Global.broom2satisfaction)
	print()
	
	Global.goto_scene("res://Scenes/OfficeRoom.tscn")
