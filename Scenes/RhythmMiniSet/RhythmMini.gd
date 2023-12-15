extends Node


const AL = preload("res://Scenes/RhythmMiniSet/Move_ArrowLeft.gd")
const AD = preload("res://Scenes/RhythmMiniSet/Move_ArrowDown.gd")
const AU = preload("res://Scenes/RhythmMiniSet/Move_ArrowUp.gd")
const AR = preload("res://Scenes/RhythmMiniSet/Move_ArrowRight.gd")

var random = 0
var RNG = RandomNumberGenerator.new()

func _process(delta):
	$Score/Label.text = str(Global.score)
	pass
	


func _on_Timer_timeout():
	
	$Timer.start()
	RNG.randomize()
	var random_int =  RNG.randi_range(0,4) # or 1,4
	random = random_int 
	
	# Random 1-4
	if random == 1:
		var al = AL.instance()
		get_parent().add_child(al)
		al.position = $Create/Position2D_AL.global_position
		
	if random == 2:
		var ad = AD.instance()
		get_parent().add_child(ad)
		ad.position = $Create/Position2D_AD.global_position
		
	if random == 3:
		var au = AU.instance()
		get_parent().add_child(au)
		au.position = $Create/Position2D_AU.global_position
		
	if random == 4:
		var ar = AR.instance()
		get_parent().add_child(ar)
		ar.position = $Create/Position2D_AR.global_position
