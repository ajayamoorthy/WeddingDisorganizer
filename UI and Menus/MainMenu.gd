extends Control

# Called when the node enters the scene tree for the first time.
func _ready():
	pass #$VBoxContainer/StartButton.grab_focus()

func _on_StartButton_pressed():
	#get_tree().change_scene("res://Scenes/OfficeRoom.tscn")
	Global.goto_scene("res://Scenes/OfficeRoom.tscn")
	
func _on_Saves_pressed():
	#get_tree().change_scene("res://Scenes/ [saves scene] ")
	pass # Replace with function body.

func _on_SettingsButton_pressed():
	#var settings = load(scene for settings).instance()
	#get_tree().current_scene.add_child(settings)
	pass

func _on_QuitButton_pressed():
	get_tree().quit()



