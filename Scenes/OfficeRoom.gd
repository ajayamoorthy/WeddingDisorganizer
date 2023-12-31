extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var localBudget;

#var broom1satisfaction = 0;
#var broom2satisfaction = 0;

#var minigames = ["MazeMinigameLevel1", "RhythmMinigame", "DressSelectionMinigame", "DriveToBakeriesMinigame", "SeatingArrangementMinigame", "BudgetingMinigame", "PlanningMinigame", "OfficeRoom"]; #which scenes
#var minigameOrder = [-1, -1, -1, -1, -1];
#var whichBroomDoesWhat = [-1, -1, -1, -1, -1]; #0 = both, 1 = nic, 2 = chauntal
#var minigameComplete = [0, 0, 0, 0, 0];

#var colorPalette;
#var broom1Fit;
#var broom2Fit;
#var floristSelection;
#var bakerSelection;
#var seatingHarmony;

#var current_scene = null;

# Called when the node enters the scene tree for the first time.
func _ready():
	$VBoxContainer.visible = false
	
	if Global.currentPosition == 0:
		var resource = preload("res://Dialogue/nicAndChauntalDialogue.tres")
		DialogueManager.show_example_dialogue_balloon("start_node", resource)
	elif Global.currentPosition == 1:
		var resource = preload("res://Dialogue/nicAndChauntalDialogue.tres")
		DialogueManager.show_example_dialogue_balloon("pre_wedding", resource)
		
func _process(delta):
	if ManageDialogue.timeToBudget == true:
		$VBoxContainer.visible = true
	
	if ManageDialogue.timeToMarry == true:
		$VBoxContainer2.visible = true
	

func _on_ContractConfirmed_pressed():
	Global.goto_scene("res://Scenes/BudgetingMinigame.tscn")

	


func _on_GetMarried_pressed():
	get_tree().quit()
