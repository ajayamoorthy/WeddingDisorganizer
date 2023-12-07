extends Node2D

var selected = false
var rest_point 
var rest_nodes = []

func _ready():
	rest_nodes = get_tree().get_nodes_in_group("zone")
	rest_point = global_position

func _process(delta):
	if selected:
		global_position = lerp(global_position, get_global_mouse_position(), 25 * delta)
	else:
		global_position = lerp(global_position, rest_point, 10 * delta)

func _input(event):
	if event is InputEventMouseButton:
		if event.button_index == BUTTON_LEFT and event.pressed:
			_on_left_mouse_button_pressed()
		elif event.button_index == BUTTON_LEFT and not event.pressed:
			_on_left_mouse_button_released()

func _on_left_mouse_button_pressed():
	if not selected:
		select()

func _on_left_mouse_button_released():
	if selected:
		drop()

func select():
	for node in rest_nodes:
		node.selected = false

	selected = true
	rest_point = global_position

func drop():
	var shortest_dist = 75
	for child in rest_nodes:
		var distance = global_position.distance_to(child.global_position)
		if distance < shortest_dist:
			child.select()
			rest_point = child.global_position
			shortest_dist = distance
