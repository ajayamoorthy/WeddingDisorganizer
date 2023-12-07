extends Node


var budget;

var broom1satisfaction = 0;
var broom2satisfaction = 0;

var minigames = ["res://Scenes/MazeMinigameLevel1.tscn", "res://Scenes/RhythmMinigame.tscn", "res://Scenes/DressSelectionMinigame.tscn", "res://Scenes/DriveToBakeriesMinigame.tscn", "res://Scenes/SeatingArrangementMinigame.tscn", "res://Scenes/BudgetingMinigame.tscn", "res://Scenes/PlanningMinigame.tscn", "res://Scenes/OfficeRoom.tscn"] #which scenes

#hardcoded for now or else i will kms
var minigameOrder = ["res://Scenes/RhythmMinigame.tscn", "res://Scenes/MazeMinigameLevel1.tscn", "res://Scenes/DressSelectionMinigame.tscn", "res://Scenes/SeatingArrangementMinigame.tscn", "res://Scenes/DriveToBakeriesMinigame.tscn"]
var whichBroomDoesWhat = [-1, -1, -1, -1, -1] #0 = both, 1 = nic, 2 = chauntal
var minigameComplete = [0, 0, 0, 0, 0]


var currentScene = null

# Called when the node enters the scene tree for the first time.
func _ready():
	var root = get_tree().root
	currentScene = root.get_child(root.get_child_count() - 1)
	
func goto_scene(path):
	call_deferred("_deferred_goto_scene", path)
	
func _deferred_goto_scene(path):
	#remove current scene
	currentScene.free()
	
	#load the new scene
	var newScene = ResourceLoader.load(path)
	
	#instance the new scene
	currentScene = newScene.instance()
	
	#add it to the active scene (child of root)
	get_tree().root.add_child(currentScene)
	
func updateSatisfaction(broom, amount):
	if broom == "nic":
		broom1satisfaction += amount
	elif broom == "chauntal":
		broom2satisfaction += amount


