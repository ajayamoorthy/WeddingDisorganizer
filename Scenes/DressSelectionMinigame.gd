extends Node2D


var b1Fit = null
var b2Fit = null
var b1satisfactionEffect = 0
var b2satisfactionEffect = 0


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


func handleButtonPress(broom, whichFit, satisfactionNum):
	if broom == "nic":
		b1Fit = whichFit
		b1satisfactionEffect = satisfactionNum
	elif broom == "chauntal":
		b2Fit = whichFit
		b2satisfactionEffect = satisfactionNum


func _on_NicALine_pressed():
	handleButtonPress("nic", "a-line white dress", -5)

func _on_NicWhiteJumpsuit_pressed():
	handleButtonPress("nic", "fitted white jumpsuit", 10)


func _on_NicBlackTux_pressed():
	handleButtonPress("nic", "simple black tux", 5)


func _on_ChanPrincessGown_pressed():
	handleButtonPress("chauntal", "white princess gown", 5)


func _on_ChanMermaidDress_pressed():
	handleButtonPress("chauntal", "white mermaid dress", -5)


func _on_ChanPinkBasque_pressed():
	handleButtonPress("chauntal", "pink basque dress", 10)


func _on_Button_pressed():
	Global.updateSatisfaction("nic", b1satisfactionEffect)
	Global.updateSatisfaction("chauntal", b2satisfactionEffect)
	Global.broom1Fit = b1Fit
	Global.broom2Fit = b2Fit
	
	#debug
	print("Nic's Fit: ", Global.broom1Fit)
	print("Chauntal's Fit: ", Global.broom2Fit)
	print("Nic's Satisfaction: ", Global.broom1satisfaction)
	print("Chauntal's Satisfaction: ", Global.broom2satisfaction)
	print()
	
	Global.goto_scene("res://Scenes/DriveToBakeriesMinigame.tscn")
