extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var option = -1
var b1satisfactionEffect = 0
var b2satisfactionEffect = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


func _on_FrugalBudget_pressed():
	option = 0
	b1satisfactionEffect = 5


func _on_ExtravagantBudget_pressed():
	option = 1
	b1satisfactionEffect = -10
	b2satisfactionEffect = -10
	
func _on_BalancedBudget_pressed():
	option = 2
	b1satisfactionEffect = 10
	b2satisfactionEffect = 10


func _on_Button_pressed():
	Global.updateSatisfaction("nic", b1satisfactionEffect)
	Global.updateSatisfaction("chauntal", b2satisfactionEffect)
	print(Global.broom1satisfaction)
	print(Global.broom2satisfaction)
	Global.goto_scene("res://Scenes/PlanningMinigame.tscn")



