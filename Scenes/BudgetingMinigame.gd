extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var option = null
var b1satisfactionEffect = 0
var b2satisfactionEffect = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


func _on_FrugalBudget_pressed():
	option = "frugal"
	b1satisfactionEffect = 5

func _on_ExtravagantBudget_pressed():
	option = "extravagant"
	b1satisfactionEffect = -10
	b2satisfactionEffect = -10
	
func _on_BalancedBudget_pressed():
	option = "balanced"
	b1satisfactionEffect = 10
	b2satisfactionEffect = 10


func _on_Button_pressed():
	Global.updateSatisfaction("nic", b1satisfactionEffect)
	Global.updateSatisfaction("chauntal", b2satisfactionEffect)
	
	#debug
	print("Budget Type: ", option)
	print("Nic's Satisfaction: ", Global.broom1satisfaction)
	print("Chauntal's Satisfaction: ", Global.broom2satisfaction)
	print()
	
	Global.goto_scene("res://Scenes/RhythmMiniSet/RhythmMini.tscn")



