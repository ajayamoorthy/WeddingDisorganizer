extends TextureProgress


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass #_on_TextureProgress_value_changed(Global.broom1satisfaction) # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	value = Global.broom1satisfaction


func _on_TextureProgress_value_changed(value):
	pass # Replace with function body.
