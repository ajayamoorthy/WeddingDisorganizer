extends MarginContainer

func _ready():
	self.visible = false

func _process(delta):
	if Global.flowerCount == 3:
		self.visible = true
