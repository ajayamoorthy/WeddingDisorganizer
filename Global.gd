extends Node


var budget;

var broom1satisfaction = 0;
var broom2satisfaction = 0;

var minigames = ["res://Scenes/MazeMinigameLevel1.tscn", "res://Scenes/RhythmMinigame.tscn", "res://Scenes/DressSelectionMinigame.tscn", "res://Scenes/DriveToBakeriesMinigame.tscn", "res://Scenes/SeatingArrangementMinigame.tscn", "res://Scenes/BudgetingMinigame.tscn", "res://Scenes/PlanningMinigame.tscn", "res://Scenes/OfficeRoom.tscn"] #which scenes

#hardcoded for now or else i will kms
var minigameOrder = ["res://Scenes/RhythmMinigame.tscn", "res://Scenes/MazeMinigameLevel1.tscn", "res://Scenes/DressSelectionMinigame.tscn", "res://Scenes/SeatingArrangementMinigame.tscn", "res://Scenes/DriveToBakeriesMinigame.tscn"]
var whichBroomDoesWhat = [-1, -1, -1, -1, -1] #0 = both, 1 = nic, 2 = chauntal
var minigameComplete = [0, 0, 0, 0, 0]

var currentPosition = 0

var theme;
var colorPalette; 
var broom1Fit; 
var broom2Fit; 
var floristSelection; 
var bakerSelection; 
var seatingHarmony; 


var current_scene = null

func _ready():
	var root = get_tree().root
	current_scene = root.get_child(root.get_child_count() - 1)
	
func goto_scene(path):
	# This function will usually be called from a signal callback,
	# or some other function in the current scene.
	# Deleting the current scene at this point is
	# a bad idea, because it may still be executing code.
	# This will result in a crash or unexpected behavior.

	# The solution is to defer the load to a later time, when
	# we can be sure that no code from the current scene is running:

	call_deferred("_deferred_goto_scene", path)


func _deferred_goto_scene(path):
	# It is now safe to remove the current scene
	current_scene.free()

	# Load the new scene.
	var s = ResourceLoader.load(path)

	# Instance the new scene.
	current_scene = s.instance()

	# Add it to the active scene, as child of root.
	get_tree().root.add_child(current_scene)

	# Optionally, to make it compatible with the SceneTree.change_scene() API.
	get_tree().current_scene = current_scene
	
func updateSatisfaction(broom, amount):
	if broom == "nic":
		broom1satisfaction += amount
	elif broom == "chauntal":
		broom2satisfaction += amount
