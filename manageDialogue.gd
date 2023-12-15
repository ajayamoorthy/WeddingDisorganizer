extends Node

#var resource = preload("res://Dialogue/nicAndChauntalDialogue.tres")
var timeToBudget = false
var timeToMarry = false

func show_dialogue(title: String, resource: DialogueResource = null) -> void:
	#DialogueManager.show_example_dialogue_balloon(resource)
	var dialogue = yield(DialogueManager.get_next_dialogue_line(title, resource), "completed")  
	
	if dialogue != null:
		var balloon = preload("res://addons/dialogue_manager/example_balloon/example_balloon.tscn").instance()
		balloon.dialogue = dialogue
		get_tree().current_scene.add_child(balloon)
		show_dialogue(yield(balloon, "actioned"), resource)
		
	  
	
	
