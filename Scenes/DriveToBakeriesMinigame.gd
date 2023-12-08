extends Node2D


var baker = null
var b1satisfactionEffect = 0
var b2satisfactionEffect = 0


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


func handleButtonPress(bakerName, satisfactionNum):
	baker = bakerName
	b1satisfactionEffect = satisfactionNum
	b2satisfactionEffect = satisfactionNum


func _on_BillBon_pressed():
	handleButtonPress("Bill Bon", 10)


func _on_EvelynCaddel_pressed():
	handleButtonPress("Evelyn Caddel", 15)


func _on_PhineasSouden_pressed():
	handleButtonPress("Phineas Souden", 5)


func _on_Button_pressed():
	Global.updateSatisfaction("nic", b1satisfactionEffect)
	Global.updateSatisfaction("chauntal", b2satisfactionEffect)
	Global.bakerSelection = baker
	
	#debug
	print("Baker: ", Global.bakerSelection)
	print("Nic's Satisfaction: ", Global.broom1satisfaction)
	print("Chauntal's Satisfaction: ", Global.broom2satisfaction)
	print()
	
	Global.goto_scene("res://Scenes/SeatingArrangementMinigame.tscn")
