extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var budget;

var broom1satisfaction = 0;
var broom2satisfaction = 0;

var minigames = ["MazeMinigameLevel1", "RhythmMinigame", "DressSelectionMinigame", "DriveToBakeriesMinigame", "SeatingArrangementMinigame"]; #which scenes
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
	trigger_minigame(minigames[0]);
	#pass # Replace with function body.

func trigger_minigame(whichMinigame):
	var new_scene = load(minigames[whichMinigame]).instance();
	
	if new_scene.is_inside_tree():
		return
		
	if current_scene and current_scene.is_inside_tree():
		add_child_below_node(new_scene, current_scene);
		remove_child(current_scene);
	else:
		add_child(new_scene);
		
	current_scene = new_scene;

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
