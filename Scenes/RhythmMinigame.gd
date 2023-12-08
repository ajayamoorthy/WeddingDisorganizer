extends Node2D

var theme = null
var b1satisfactionEffect = 0
var b2satisfactionEffect = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _on_bohemianTheme_pressed():
	theme = "bohemian"
	b1satisfactionEffect = 10
	b2satisfactionEffect = 10


func _on_industrialTheme_pressed():
	theme = "industrial"
	b2satisfactionEffect = 15


func _on_aquaticTheme_pressed():
	theme = "aquatic"
	b1satisfactionEffect = -15
	b2satisfactionEffect = -15


func _on_confirmButton_pressed():
	Global.updateSatisfaction("nic", b1satisfactionEffect)
	Global.updateSatisfaction("chauntal", b2satisfactionEffect)
	Global.theme = theme
	
	#debug
	print("Theme: ", Global.theme)
	print("Nic's Satisfaction: ", Global.broom1satisfaction)
	print("Chauntal's Satisfaction: ", Global.broom2satisfaction)
	print()
	
	Global.goto_scene("res://Scenes/DressSelectionMinigame.tscn")
