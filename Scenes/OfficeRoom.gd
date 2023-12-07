extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var budget;

var broom1satisfaction = 0;
var broom2satisfaction = 0;

var minigames = ["MazeMinigameLevel1", "RhythmMinigame", "DressSelectionMinigame", "DriveToBakeriesMinigame", "SeatingArrangementMinigame", "BudgetingMinigame", "PlanningMinigame", "OfficeRoom"]; #which scenes
var minigameOrder = [-1, -1, -1, -1, -1];
var whichBroomDoesWhat = [-1, -1, -1, -1, -1]; #0 = both, 1 = nic, 2 = chauntal
var minigameComplete = [0, 0, 0, 0, 0];

var colorPalette;
var broom1Fit;
var broom2Fit;
var floristSelection;
var bakerSelection;
var seatingHarmony;

var current_scene = null;

# Called when the node enters the scene tree for the first time.
func _ready():
	pass

func _on_ContractConfirmed_pressed():
	Global.goto_scene(Global.minigames[5])
